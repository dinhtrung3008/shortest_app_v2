import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/collection_names.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/chat/chat_dto.dart';
import '../../client/dio_client.dart';

abstract class IChatRemoteService {
  Future<ListChatResponseDTO> getChatRooms({int page = 1, int perPage = 10, String filter = ""});
  Future<ChatDTO> createChatRoom({required String lastMessage, required String viewerUserId});
  Future<Unit> updateChatRoom({required String chatId, required String lastMessage});
  Future<Unit> deleteChatRoom({required String chatId});
  Future<Unit> markAsRead({required String chatId});
  Future<Unit> markAsUnRead({required String chatId});
}

@LazySingleton(as: IChatRemoteService)
class ChatRemoveServiceImpl with ExecuteRemoteServiceImpl implements IChatRemoteService {
  final IDioClient _iDioClient;
  final FlutterSecureStorage _secureStorage;

  ChatRemoveServiceImpl(this._iDioClient, this._secureStorage);

  @override
  Future<ChatDTO> createChatRoom({required String lastMessage, required String viewerUserId}) async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'User ID not found in cache');
    }

    final lastMessages = LastMessagesDTO(sendByUserId: '', messages: []);

    final List<UsersInChatDTO> usersInChat = [
      UsersInChatDTO(userId: currentUserId, isRead: true),
      UsersInChatDTO(userId: viewerUserId, isRead: false),
    ];

    final List<String> users = [currentUserId, viewerUserId];

    final body =
        ChatDTO(
          lastMessages: lastMessages,
          lastSenderId: currentUserId,
          users: users,
          usersInChat: usersInChat,
        ).toJson();

    final queryParams = {"expand": "users"};

    return await handleResponse<ChatDTO>(
      _iDioClient.postRequest(
        "/api/collections/${CollectionNames.chatsCollection}/records",
        bodyParams: body,
        queryParams: queryParams,
      ),
      onSuccess: (response) => ChatDTO.fromJson(response.data),
    );
  }

  @override
  Future<ListChatResponseDTO> getChatRooms({int page = 1, int perPage = 10, String filter = ""}) async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'Current user ID not found');
    }

    final queryParams = {
      "page": page,
      "perPage": perPage,
      "filter": filter.isNotEmpty ? filter : "(users~'$currentUserId')",
      "expand": "users",
    };

    return handleResponse<ListChatResponseDTO>(
      _iDioClient.getRequest("/api/collections/${CollectionNames.chatsCollection}/records", queryParams: queryParams),
      onSuccess: (response) => ListChatResponseDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> markAsRead({required String chatId}) async {
    final currentChat = await handleResponse<ChatDTO>(
      _iDioClient.getRequest("/api/collections/${CollectionNames.chatsCollection}/records/$chatId"),
      onSuccess: (response) => ChatDTO.fromJson(response.data),
    );

    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'User id not found');
    }

    final usersInChat = List<UsersInChatDTO>.from(currentChat.usersInChat ?? []);

    final updatedUsersInChat =
        usersInChat.map((userInChat) {
          if (userInChat.userId == currentUserId) {
            return userInChat.copyWith(isRead: true);
          }
          return userInChat;
        }).toList();

    LastMessagesDTO? updatedLastMessages = currentChat.lastMessages;
    if (currentChat.lastMessages?.sendByUserId != currentUserId) {
      updatedLastMessages = currentChat.lastMessages?.copyWith(messages: []);
    }

    final body = ChatDTO(usersInChat: updatedUsersInChat, lastMessages: updatedLastMessages).toJson();

    final queryParams = {"expand": "users"};

    return await handleResponse<Unit>(
      _iDioClient.patchRequest(
        "/api/collections/${CollectionNames.chatsCollection}/records/$chatId",
        bodyParams: body,
        queryParams: queryParams,
      ),
      onSuccess: (_) => unit,
    );
  }

  @override
  Future<Unit> markAsUnRead({required String chatId}) async {
    final currentChat = await handleResponse<ChatDTO>(
      _iDioClient.getRequest("/api/collections/${CollectionNames.chatsCollection}/records/$chatId"),
      onSuccess: (response) => ChatDTO.fromJson(response.data),
    );

    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'User id not found');
    }

    final usersInChat = List<UsersInChatDTO>.from(currentChat.usersInChat ?? []);

    final updatedUsersInChat =
        usersInChat.map((userInChat) {
          if (userInChat.userId == currentUserId) {
            return userInChat.copyWith(isRead: false);
          }
          return userInChat;
        }).toList();

    final body = ChatDTO(usersInChat: updatedUsersInChat).toJson();

    final queryParams = {"expand": "users"};

    return await handleResponse<Unit>(
      _iDioClient.patchRequest(
        "/api/collections/${CollectionNames.chatsCollection}/records/$chatId",
        bodyParams: body,
        queryParams: queryParams,
      ),
      onSuccess: (_) => unit,
    );
  }

  @override
  Future<Unit> deleteChatRoom({required String chatId}) {
    return handleResponse<Unit>(
      _iDioClient.deleteRequest("/api/collections/${CollectionNames.chatsCollection}/records/$chatId"),
      onSuccess: (_) => unit,
    );
  }

  @override
  Future<Unit> updateChatRoom({required String chatId, required String lastMessage}) async {
    final currentChat = await handleResponse<ChatDTO>(
      _iDioClient.getRequest("/api/collections/${CollectionNames.chatsCollection}/records/$chatId"),
      onSuccess: (response) => ChatDTO.fromJson(response.data),
    );

    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'Current user ID not found');
    }
    List<String> updatedMessages = [];
    final allUsersRead = currentChat.usersInChat?.every((user) => user.isRead == true);

    if (allUsersRead == true) {
      if (updatedMessages.isNotEmpty) {
        updatedMessages = [];
      }
    } else {
      updatedMessages = List<String>.from(currentChat.lastMessages?.messages ?? [])..add(lastMessage);
    }

    final lastMessages = LastMessagesDTO(sendByUserId: currentUserId, messages: updatedMessages);

    final body = ChatDTO(lastMessages: lastMessages, lastSenderId: currentUserId, lastMessage: lastMessage).toJson();

    final queryParams = {"expand": "users"};

    return await handleResponse<Unit>(
      _iDioClient.patchRequest(
        "/api/collections/${CollectionNames.chatsCollection}/records/$chatId",
        bodyParams: body,
        queryParams: queryParams,
      ),
      onSuccess: (_) => unit,
    );
  }
}

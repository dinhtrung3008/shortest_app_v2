import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/chat/chat_dto.dart';
import '../../services/chat/chat_api_service.dart';

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
  final ChatApiService _chatApiService;
  final FlutterSecureStorage _secureStorage;

  ChatRemoveServiceImpl(this._chatApiService, this._secureStorage);

  @override
  Future<ChatDTO> createChatRoom({required String lastMessage, required String viewerUserId}) async {
    final currentUserId = await _getCurrentUserId();

    final body = _buildCreateChatRoomBody(
      currentUserId: currentUserId,
      viewerUserId: viewerUserId,
      lastMessage: lastMessage,
    );

    return await executeApiService<ChatDTO>(
      _chatApiService.createChatRoom(body: body, expand: "users"),
      onSuccess: (response) => ChatDTO.fromJson(response.data),
    );
  }

  @override
  Future<ListChatResponseDTO> getChatRooms({int page = 1, int perPage = 10, String filter = ""}) async {
    final currentUserId = await _getCurrentUserId();

    final finalFilter = filter.isNotEmpty ? filter : "(users~'$currentUserId')";

    return await executeApiService<ListChatResponseDTO>(
      _chatApiService.getChatRooms(page: page, perPage: perPage, filter: finalFilter, expand: "users"),
      onSuccess: (response) => ListChatResponseDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> markAsRead({required String chatId}) async {
    final currentChat = await _getChatById(chatId);
    final currentUserId = await _getCurrentUserId();

    final body = _buildMarkAsReadBody(currentChat, currentUserId);

    return await executeApiService<Unit>(
      _chatApiService.updateChatData(chatId: chatId, body: body, expand: "users"),
      onSuccess: (_) => unit,
    );
  }

  @override
  Future<Unit> markAsUnRead({required String chatId}) async {
    final currentChat = await _getChatById(chatId);
    final currentUserId = await _getCurrentUserId();

    final body = _buildMarkAsUnReadBody(currentChat, currentUserId);

    return await executeApiService<Unit>(
      _chatApiService.updateChatData(chatId: chatId, body: body, expand: "users"),
      onSuccess: (_) => unit,
    );
  }

  @override
  Future<Unit> deleteChatRoom({required String chatId}) async {
    return await executeApiService<Unit>(_chatApiService.deleteChatRoom(chatId: chatId), onSuccess: (_) => unit);
  }

  @override
  Future<Unit> updateChatRoom({required String chatId, required String lastMessage}) async {
    final currentChat = await _getChatById(chatId);
    final currentUserId = await _getCurrentUserId();

    final body = _buildUpdateChatRoomBody(
      currentChat: currentChat,
      currentUserId: currentUserId,
      lastMessage: lastMessage,
    );

    return await executeApiService<Unit>(
      _chatApiService.updateChatData(chatId: chatId, body: body, expand: "users"),
      onSuccess: (_) => unit,
    );
  }

  Future<String> _getCurrentUserId() async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);
    if (currentUserId == null) {
      throw CacheException(message: 'User ID not found in cache');
    }
    return currentUserId;
  }

  Future<ChatDTO> _getChatById(String chatId) async {
    return await executeApiService<ChatDTO>(
      _chatApiService.getChatRoomById(chatId: chatId),
      onSuccess: (response) => ChatDTO.fromJson(response.data),
    );
  }

  Map<String, dynamic> _buildCreateChatRoomBody({
    required String currentUserId,
    required String viewerUserId,
    required String lastMessage,
  }) {
    final lastMessages = LastMessagesDTO(sendByUserId: '', messages: []);

    final List<UsersInChatDTO> usersInChat = [
      UsersInChatDTO(userId: currentUserId, isRead: true),
      UsersInChatDTO(userId: viewerUserId, isRead: false),
    ];

    final List<String> users = [currentUserId, viewerUserId];

    return ChatDTO(
      lastMessages: lastMessages,
      lastSenderId: currentUserId,
      users: users,
      usersInChat: usersInChat,
    ).toJson();
  }

  Map<String, dynamic> _buildMarkAsReadBody(ChatDTO currentChat, String currentUserId) {
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

    return ChatDTO(usersInChat: updatedUsersInChat, lastMessages: updatedLastMessages).toJson();
  }

  Map<String, dynamic> _buildMarkAsUnReadBody(ChatDTO currentChat, String currentUserId) {
    final usersInChat = List<UsersInChatDTO>.from(currentChat.usersInChat ?? []);

    final updatedUsersInChat =
        usersInChat.map((userInChat) {
          if (userInChat.userId == currentUserId) {
            return userInChat.copyWith(isRead: false);
          }
          return userInChat;
        }).toList();

    return ChatDTO(usersInChat: updatedUsersInChat).toJson();
  }

  Map<String, dynamic> _buildUpdateChatRoomBody({
    required ChatDTO currentChat,
    required String currentUserId,
    required String lastMessage,
  }) {
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

    return ChatDTO(lastMessages: lastMessages, lastSenderId: currentUserId, lastMessage: lastMessage).toJson();
  }
}

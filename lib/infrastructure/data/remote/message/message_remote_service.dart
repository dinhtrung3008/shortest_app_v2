import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/collection_names.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/message/message_dto.dart';
import '../../client/dio_client.dart';

abstract class IMessageRemoteService {
  Future<MessageDTO> createMessage({required String chatId, required String type, required String content});
  Future<MessageDTO> updateContentMessage({required String messageId, required String content});
  Future<ListMessageResponseDTO> getMessagesByChatId({
    required String chatId,
    int page = 1,
    int perPage = 10,
    String filter = "",
  });
  Future<Unit> deleteMessage({required String messageId});
  Future<MessageDTO> likeMessage({required String messageId, required bool isLiked});
}

@LazySingleton(as: IMessageRemoteService)
class MessageRemoteServiceImpl with ExecuteRemoteServiceImpl implements IMessageRemoteService {
  final IDioClient _iDioClient;
  final FlutterSecureStorage _secureStorage;

  MessageRemoteServiceImpl(this._iDioClient, this._secureStorage);

  @override
  Future<MessageDTO> createMessage({required String chatId, required String type, required String content}) async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'User ID not found');
    }

    final body =
        MessageDTO(
          chatId: chatId,
          sendById: currentUserId,
          type: type,
          content: content,
          sendingTime: DateTime.now().toString(),
        ).toJson();

    final queryParams = {"expand": "sendById"};

    return handleResponse<MessageDTO>(
      _iDioClient.postRequest(
        "/api/collections/${CollectionNames.messagesChatCollection}/records",
        bodyParams: body,
        queryParams: queryParams,
      ),
      onSuccess: (response) => MessageDTO.fromJson(response.data),
    );
  }

  @override
  Future<ListMessageResponseDTO> getMessagesByChatId({
    required String chatId,
    int page = 1,
    int perPage = 10,
    String filter = "",
  }) {
    final queryParams = {
      "page": page,
      "perPage": perPage,
      "filter": "(chatId='$chatId')",
      "expand": "sendById",
      "sort": "-created",
    };

    return handleResponse<ListMessageResponseDTO>(
      _iDioClient.getRequest(
        "/api/collections/${CollectionNames.messagesChatCollection}/records",
        queryParams: queryParams,
      ),
      onSuccess: (response) => ListMessageResponseDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> deleteMessage({required String messageId}) {
    return handleResponse<Unit>(
      _iDioClient.deleteRequest("/api/collections/${CollectionNames.messagesChatCollection}/records/$messageId"),
      onSuccess: (_) => unit,
    );
  }

  @override
  Future<MessageDTO> likeMessage({required String messageId, required bool isLiked}) {
    final body = MessageDTO(isLiked: isLiked).toJson();
    final queryParams = {"expand": "sendById"};

    return handleResponse<MessageDTO>(
      _iDioClient.patchRequest(
        "/api/collections/${CollectionNames.messagesChatCollection}/records/$messageId",
        bodyParams: body,
        queryParams: queryParams,
      ),
      onSuccess: (response) => MessageDTO.fromJson(response.data),
    );
  }

  @override
  Future<MessageDTO> updateContentMessage({required String messageId, required String content}) {
    final body = MessageDTO(content: content).toJson();
    final queryParams = {"expand": "sendById"};

    return handleResponse<MessageDTO>(
      _iDioClient.patchRequest(
        "/api/collections/${CollectionNames.messagesChatCollection}/records/$messageId",
        bodyParams: body,
        queryParams: queryParams,
      ),
      onSuccess: (response) => MessageDTO.fromJson(response.data),
    );
  }
}

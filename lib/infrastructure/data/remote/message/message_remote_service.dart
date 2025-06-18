import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../../presentation/core/constants/api_urls.dart';
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

    return execute<MessageDTO>(
      _iDioClient.postRequest("/${APIUrls.messagesChatUrl}/records", bodyParams: body, queryParams: queryParams),
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

    return execute<ListMessageResponseDTO>(
      _iDioClient.getRequest("/${APIUrls.messagesChatUrl}/records", queryParams: queryParams),
      onSuccess: (response) => ListMessageResponseDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> deleteMessage({required String messageId}) {
    return execute<Unit>(
      _iDioClient.deleteRequest("/${APIUrls.messagesChatUrl}/records/$messageId"),
      onSuccess: (_) => unit,
    );
  }

  @override
  Future<MessageDTO> likeMessage({required String messageId, required bool isLiked}) {
    final body = MessageDTO(isLiked: isLiked).toJson();
    final queryParams = {"expand": "sendById"};

    return execute<MessageDTO>(
      _iDioClient.patchRequest(
        "/${APIUrls.messagesChatUrl}/records/$messageId",
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

    return execute<MessageDTO>(
      _iDioClient.patchRequest(
        "/${APIUrls.messagesChatUrl}/records/$messageId",
        bodyParams: body,
        queryParams: queryParams,
      ),
      onSuccess: (response) => MessageDTO.fromJson(response.data),
    );
  }
}

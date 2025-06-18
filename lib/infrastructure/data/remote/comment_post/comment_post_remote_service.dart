import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../../presentation/core/constants/api_urls.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/comment_post/comment_post_dto.dart';
import '../../client/dio_client.dart';

abstract class ICommentPostRemoteService {
  Future<CommentPostDTO> addComment({required String content, required String postId, List<XFile>? mediaFiles});
  Future<CommentPostDTO> updateComment({
    required String commentId,
    required String newContent,
    List<XFile>? mediaFiles,
  });
  Future<ListCommentPostResponseDTO> getCommentsByPostId({int page = 1, int perPage = 10, required String postId});
  Future<Unit> deleteComment({required String commentId});
}

@LazySingleton(as: ICommentPostRemoteService)
class CommentPostRemoteServiceImpl with ExecuteRemoteServiceImpl implements ICommentPostRemoteService {
  final IDioClient _iDioClient;
  final FlutterSecureStorage _secureStorage;

  CommentPostRemoteServiceImpl(this._iDioClient, this._secureStorage);

  Future<FormData> _createFormData({required Map<String, dynamic> body, List<XFile>? mediaFiles}) async {
    final media =
        mediaFiles != null && mediaFiles.isNotEmpty
            ? await Future.wait(mediaFiles.map((file) => MultipartFile.fromFile(file.path, filename: file.name)))
            : null;

    return FormData.fromMap({...body, if (media != null) "mediaUrls": media});
  }

  @override
  Future<CommentPostDTO> addComment({required String content, required String postId, List<XFile>? mediaFiles}) async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'Current user ID not found');
    }

    final body = CommentPostDTO(content: content, owner: currentUserId, postOwner: postId).toJson();

    final formData = await _createFormData(body: body, mediaFiles: mediaFiles);

    return execute<CommentPostDTO>(
      _iDioClient.postRequest(
        "/${APIUrls.commentsPostUrl}/records",
        formData: formData,
        queryParams: {"expand": "owner"},
      ),
      onSuccess: (response) => CommentPostDTO.fromJson(response.data),
    );
  }

  @override
  Future<CommentPostDTO> updateComment({
    required String commentId,
    required String newContent,
    List<XFile>? mediaFiles,
  }) async {
    final body = CommentPostDTO(content: newContent, updated: DateTime.now()).toJson();

    final formData = await _createFormData(body: body, mediaFiles: mediaFiles);

    return execute<CommentPostDTO>(
      _iDioClient.patchRequest(
        "/${APIUrls.commentsPostUrl}/records/$commentId",
        formData: formData,
        queryParams: {"expand": "owner"},
      ),
      onSuccess: (response) => CommentPostDTO.fromJson(response.data),
    );
  }

  @override
  Future<ListCommentPostResponseDTO> getCommentsByPostId({
    int page = 1,
    int perPage = 10,
    required String postId,
  }) async {
    final queryParams = {
      "page": page,
      "perPage": perPage,
      "sort": "-created",
      "filter": "(postOwner~'$postId')",
      "expand": "owner",
    };

    return execute<ListCommentPostResponseDTO>(
      _iDioClient.getRequest("/${APIUrls.commentsPostUrl}/records", queryParams: queryParams),
      onSuccess: (response) => ListCommentPostResponseDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> deleteComment({required String commentId}) async {
    return execute<Unit>(
      _iDioClient.deleteRequest("/${APIUrls.commentsPostUrl}/records/$commentId"),
      onSuccess: (_) {
        return unit;
      },
    );
  }
}

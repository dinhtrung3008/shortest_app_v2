import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/comment_post/comment_post_dto.dart';
import '../../services/comment_post/comment_post_api_service.dart';

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
  final CommentPostApiService _commentPostApiService;
  final FlutterSecureStorage _secureStorage;

  CommentPostRemoteServiceImpl(this._commentPostApiService, this._secureStorage);

  Future<List<MultipartFile>?> _createMultipartFiles(List<XFile>? mediaFiles) async {
    if (mediaFiles == null || mediaFiles.isEmpty) return null;

    return await Future.wait(mediaFiles.map((file) => MultipartFile.fromFile(file.path, filename: file.name)));
  }

  @override
  Future<CommentPostDTO> addComment({required String content, required String postId, List<XFile>? mediaFiles}) async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'Current user ID not found');
    }

    final multipartFiles = await _createMultipartFiles(mediaFiles);

    return executeApiService<CommentPostDTO>(
      _commentPostApiService.addComment(
        content: content,
        owner: currentUserId,
        postOwner: postId,
        mediaFiles: multipartFiles,
        expand: "owner",
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
    final multipartFiles = await _createMultipartFiles(mediaFiles);

    return executeApiService<CommentPostDTO>(
      _commentPostApiService.updateComment(
        commentId: commentId,
        content: newContent,
        updated: DateTime.now().toIso8601String(),
        mediaFiles: multipartFiles,
        expand: "owner",
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
    return executeApiService<ListCommentPostResponseDTO>(
      _commentPostApiService.getCommentsByPostId(
        page: page,
        perPage: perPage,
        sort: "-created",
        filter: "(postOwner~'$postId')",
        expand: "owner",
      ),
      onSuccess: (response) => ListCommentPostResponseDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> deleteComment({required String commentId}) async {
    return executeApiService<Unit>(_commentPostApiService.deleteComment(commentId: commentId), onSuccess: (_) => unit);
  }
}

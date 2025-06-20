import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/like_comment/like_comment_dto.dart';
import '../../services/like_comment_post/like_comment_post_api_service.dart';

abstract class ILikeCommentPostRemoteService {
  Future<LikeCommentDTO> likeComment({required String commentId});
  Future<Unit> unlikeComment({required String likeCommentId});
  Future<ListLikeCommentResponseDTO> getLikeCommentsByPostId({
    int page = 1,
    int perPage = 10,
    required String commentId,
  });
  Future<Unit> deleteLikeComment({required String likeCommentId});
}

@LazySingleton(as: ILikeCommentPostRemoteService)
class LikeCommentPostRemoteServiceImpl with ExecuteRemoteServiceImpl implements ILikeCommentPostRemoteService {
  final LikeCommentPostApiService _likeCommentPostApiService;

  LikeCommentPostRemoteServiceImpl(this._likeCommentPostApiService);

  @override
  Future<LikeCommentDTO> likeComment({required String commentId}) async {
    final body = LikeCommentDTO(commentOwner: commentId).toJson();

    return executeApiService<LikeCommentDTO>(
      _likeCommentPostApiService.likeComment(body: body),
      onSuccess: (response) => LikeCommentDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> unlikeComment({required String likeCommentId}) async {
    return executeApiService<Unit>(
      _likeCommentPostApiService.unlikeComment(likeCommentId: likeCommentId),
      onSuccess: (_) => unit,
    );
  }

  @override
  Future<ListLikeCommentResponseDTO> getLikeCommentsByPostId({
    int page = 1,
    int perPage = 10,
    required String commentId,
  }) async {
    return executeApiService<ListLikeCommentResponseDTO>(
      _likeCommentPostApiService.getLikeCommentsByPostId(
        page: page,
        perPage: perPage,
        filter: "(commentOwner~'$commentId')",
      ),
      onSuccess: (response) => ListLikeCommentResponseDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> deleteLikeComment({required String likeCommentId}) async {
    return executeApiService<Unit>(
      _likeCommentPostApiService.deleteLikeComment(likeCommentId: likeCommentId),
      onSuccess: (response) => unit,
    );
  }
}

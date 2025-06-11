import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../presentation/core/constants/collection_names.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/like_comment/like_comment_dto.dart';
import '../../client/dio_client.dart';

abstract class ILikeCommentPostRemoteService {
  Future<LikeCommentDTO> likeComment({required String commentId});
  Future<void> unlikeComment({required String likeCommentId});
  Future<ListLikeCommentResponseDTO> getLikeCommentsByPostId({
    int page = 1,
    int perPage = 10,
    required String commentId,
  });
  Future<Unit> deleteLikeComment({required String likeCommentId});
}

@LazySingleton(as: ILikeCommentPostRemoteService)
class LikeCommentPostRemoteServiceImpl with ExecuteRemoteServiceImpl implements ILikeCommentPostRemoteService {
  final IDioClient _iDioClient;

  LikeCommentPostRemoteServiceImpl(this._iDioClient);

  @override
  Future<LikeCommentDTO> likeComment({required String commentId}) async {
    final body = LikeCommentDTO(commentOwner: commentId);

    return handleResponse<LikeCommentDTO>(
      _iDioClient.postRequest(
        '/api/collections/${CollectionNames.likesCommentsCollection}/records',
        bodyParams: body.toJson(),
      ),
      onSuccess: (response) => LikeCommentDTO.fromJson(response.data),
    );
  }

  @override
  Future<void> unlikeComment({required String likeCommentId}) async {
    return handleResponse<void>(
      _iDioClient.deleteRequest('/api/collections/${CollectionNames.likesCommentsCollection}/records/$likeCommentId'),
      onSuccess: (response) {
        return;
      },
    );
  }

  @override
  Future<ListLikeCommentResponseDTO> getLikeCommentsByPostId({
    int page = 1,
    int perPage = 10,
    required String commentId,
  }) async {
    final queryParams = {'filter': "(commentOwner~'$commentId')", 'page': page, 'perPage': perPage};

    return handleResponse<ListLikeCommentResponseDTO>(
      _iDioClient.getRequest(
        '/api/collections/${CollectionNames.likesCommentsCollection}/records',
        queryParams: queryParams,
      ),
      onSuccess: (response) => ListLikeCommentResponseDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> deleteLikeComment({required String likeCommentId}) async {
    return handleResponse<Unit>(
      _iDioClient.deleteRequest('/api/collections/${CollectionNames.likesCommentsCollection}/records/$likeCommentId'),
      onSuccess: (response) {
        return unit;
      },
    );
  }
}

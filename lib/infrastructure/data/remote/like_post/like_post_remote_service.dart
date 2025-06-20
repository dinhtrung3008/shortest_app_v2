import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/like_post/like_post_dto.dart';
import '../../services/like_post/like_post_api_service.dart';

abstract class ILikePostRemoteService {
  Future<LikePostDTO> likePost({required String postId});
  Future<Unit> unlikePost({required String likePostId});
  Future<ListLikePostResponseDTO> getLikesByPostId({required String postId, int page = 1, int perPage = 10});
}

@LazySingleton(as: ILikePostRemoteService)
class LikePostRemoteServiceImpl with ExecuteRemoteServiceImpl implements ILikePostRemoteService {
  final LikePostApiService _likePostApiService;
  final FlutterSecureStorage _secureStorage;

  LikePostRemoteServiceImpl(this._likePostApiService, this._secureStorage);

  @override
  Future<LikePostDTO> likePost({required String postId}) async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'Current user ID not found');
    }

    final body = {"owner": currentUserId, "postOwner": postId};

    return executeApiService<LikePostDTO>(
      _likePostApiService.likePost(body: body, expand: "owner"),
      onSuccess: (response) => LikePostDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> unlikePost({required String likePostId}) async {
    return executeApiService<Unit>(_likePostApiService.unlikePost(likePostId: likePostId), onSuccess: (_) => unit);
  }

  @override
  Future<ListLikePostResponseDTO> getLikesByPostId({required String postId, int page = 1, int perPage = 10}) async {
    return executeApiService<ListLikePostResponseDTO>(
      _likePostApiService.getLikesByPostId(
        page: page,
        perPage: perPage,
        filter: "(postOwner~'$postId')",
        expand: "owner",
      ),
      onSuccess: (response) => ListLikePostResponseDTO.fromJson(response.data),
    );
  }
}

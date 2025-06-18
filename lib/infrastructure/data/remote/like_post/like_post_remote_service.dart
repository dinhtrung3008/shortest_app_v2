import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../../presentation/core/constants/api_urls.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/like_post/like_post_dto.dart';
import '../../client/dio_client.dart';

abstract class ILikePostRemoteService {
  Future<LikePostDTO> likePost({required String postId});
  Future<Unit> unlikePost({required String likePostId});
  Future<ListLikePostResponseDTO> getLikesByPostId({required String postId, int page = 1, int perPage = 10});
}

@LazySingleton(as: ILikePostRemoteService)
class LikePostRemoteServiceImpl with ExecuteRemoteServiceImpl implements ILikePostRemoteService {
  final IDioClient _iDioClient;
  final FlutterSecureStorage _secureStorage;

  LikePostRemoteServiceImpl(this._iDioClient, this._secureStorage);

  @override
  Future<LikePostDTO> likePost({required String postId}) async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'Current user ID not found');
    }

    final body = {"owner": currentUserId, "postOwner": postId};
    final queryParams = {"expand": "owner"};

    return execute<LikePostDTO>(
      _iDioClient.postRequest("/${APIUrls.likesPostUrl}/records", bodyParams: body, queryParams: queryParams),
      onSuccess: (response) => LikePostDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> unlikePost({required String likePostId}) async {
    return execute<Unit>(
      _iDioClient.deleteRequest("/${APIUrls.likesPostUrl}/records/$likePostId"),
      onSuccess: (response) {
        return unit;
      },
    );
  }

  @override
  Future<ListLikePostResponseDTO> getLikesByPostId({required String postId, int page = 1, int perPage = 10}) async {
    final queryParams = {"page": page, "perPage": perPage, "filter": "(postOwner~'$postId')", "expand": "owner"};

    return execute<ListLikePostResponseDTO>(
      _iDioClient.getRequest("/${APIUrls.likesPostUrl}/records", queryParams: queryParams),
      onSuccess: (response) => ListLikePostResponseDTO.fromJson(response.data),
    );
  }
}

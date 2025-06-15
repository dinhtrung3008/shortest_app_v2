import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../../presentation/core/constants/api_urls.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/share_post/share_post_dto.dart';
import '../../client/dio_client.dart';

abstract class ISharePostRemoteService {
  Future<SharePostDTO> addSharePost({required String postId});
  Future<SharePostDTO> updateSharePost({required String sharePostId});

  Future<ListSharePostResponseDTO> getSharePostsByPostId({int page = 1, int perPage = 10, required String postId});

  Future<Unit> deleteSharePost({required String sharePostId});
}

@LazySingleton(as: ISharePostRemoteService)
class SharePostRemoteServiceImpl with ExecuteRemoteServiceImpl implements ISharePostRemoteService {
  final IDioClient _iDioClient;
  final FlutterSecureStorage _secureStorage;

  SharePostRemoteServiceImpl(this._iDioClient, this._secureStorage);

  @override
  Future<SharePostDTO> addSharePost({required String postId}) async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'Current user ID not found');
    }

    final body = SharePostDTO(postOwner: postId, owner: currentUserId).toJson();

    final queryParams = {"expand": "owner"};

    return handleResponse<SharePostDTO>(
      _iDioClient.postRequest("/${APIUrls.sharesPostUrl}/records", bodyParams: body, queryParams: queryParams),
      onSuccess: (response) {
        return SharePostDTO.fromJson(response.data);
      },
    );
  }

  @override
  Future<SharePostDTO> updateSharePost({required String sharePostId}) async {
    final queryParams = {"expand": "owner"};

    return handleResponse<SharePostDTO>(
      _iDioClient.patchRequest("/${APIUrls.sharesPostUrl}/records/$sharePostId", queryParams: queryParams),
      onSuccess: (response) {
        return SharePostDTO.fromJson(response.data);
      },
    );
  }

  @override
  Future<ListSharePostResponseDTO> getSharePostsByPostId({
    int page = 1,
    int perPage = 10,
    required String postId,
  }) async {
    final queryParams = {"page": page, "perPage": perPage, "filter": "(postOwner~'$postId')", "expand": "owner"};

    return handleResponse<ListSharePostResponseDTO>(
      _iDioClient.getRequest("/${APIUrls.sharesPostUrl}/records", queryParams: queryParams),
      onSuccess: (response) {
        return ListSharePostResponseDTO.fromJson(response.data);
      },
    );
  }

  @override
  Future<Unit> deleteSharePost({required String sharePostId}) async {
    return handleResponse<Unit>(
      _iDioClient.deleteRequest("/${APIUrls.sharesPostUrl}/records/$sharePostId"),
      onSuccess: (_) {
        return unit;
      },
    );
  }
}

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/collection_names.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/user_shortest/user_shortest_dto.dart';
import '../../client/dio_client.dart';

abstract class IViewerUserRemoteService {
  Future<UserShortestDTO> getViewerById({required String viewerId});
  Future<UserShortestDTO> incrementFollowers({required List<String> viewerFollowers, required String viewerId});
  Future<UserShortestDTO> decrementFollowers({required List<String> viewerFollowers, required String viewerId});
}

@LazySingleton(as: IViewerUserRemoteService)
class ViewerUserRemoteServiceImpl with ExecuteRemoteServiceImpl implements IViewerUserRemoteService {
  final IDioClient _iDioClient;
  final FlutterSecureStorage _secureStorage;

  ViewerUserRemoteServiceImpl(this._iDioClient, this._secureStorage);

  @override
  Future<UserShortestDTO> getViewerById({required String viewerId}) async {
    return handleResponse<UserShortestDTO>(
      _iDioClient.getRequest("/api/collections/${CollectionNames.usersCollection}/records/$viewerId"),
      onSuccess: (response) => UserShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<UserShortestDTO> incrementFollowers({required List<String> viewerFollowers, required String viewerId}) async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'Current user ID not found');
    }

    final updatedFollowers = List<String>.from(viewerFollowers)..add(currentUserId);

    return handleResponse<UserShortestDTO>(
      _iDioClient.patchRequest(
        "/api/collections/${CollectionNames.usersCollection}/records/$viewerId",
        bodyParams: {'followers': updatedFollowers},
      ),
      onSuccess: (response) => UserShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<UserShortestDTO> decrementFollowers({required List<String> viewerFollowers, required String viewerId}) async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'Current user ID not found');
    }

    final updatedFollowers = List<String>.from(viewerFollowers)..remove(currentUserId);

    return handleResponse<UserShortestDTO>(
      _iDioClient.patchRequest(
        "/api/collections/${CollectionNames.usersCollection}/records/$viewerId",
        bodyParams: {'followers': updatedFollowers},
      ),
      onSuccess: (response) => UserShortestDTO.fromJson(response.data),
    );
  }
}

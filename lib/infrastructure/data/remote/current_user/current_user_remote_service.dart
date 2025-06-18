import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../../presentation/core/constants/api_urls.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/user_shortest/user_shortest_dto.dart';
import '../../client/dio_client.dart';

abstract class ICurrentUserRemoteService {
  Future<Option<UserShortestDTO?>> getCurrentUserById();
  Future<UserShortestDTO> updateUser({required UserShortestDTO userDTO, File? profileImage, File? coverImage});
  Future<ListUserShortestResponseDTO> getUsersSearchByUsername({required String userName});
  Future<UserShortestDTO> increaseFollowings({
    required List<String> currentUserFollowings,
    required String viewerUserId,
  });
  Future<UserShortestDTO> decreaseFollowings({
    required List<String> currentUserFollowings,
    required String viewerUserId,
  });
  Future<Unit> updateInterest(List<String> selectedInterests);
}

@LazySingleton(as: ICurrentUserRemoteService)
class CurrentUserRemoteServiceImpl with ExecuteRemoteServiceImpl implements ICurrentUserRemoteService {
  final IDioClient _iDioClient;
  final FlutterSecureStorage _secureStorage;

  CurrentUserRemoteServiceImpl(this._iDioClient, this._secureStorage);

  Future<String> getCurrentUserId() async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'User ID not found');
    }

    return currentUserId;
  }

  @override
  Future<Option<UserShortestDTO?>> getCurrentUserById() async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      return none();
    }

    return execute<Option<UserShortestDTO?>>(
      _iDioClient.getRequest("/${APIUrls.usersUrl}/records/$currentUserId"),
      onSuccess: (response) {
        final userDTO = UserShortestDTO.fromJson(response.data);
        return some(userDTO);
      },
    );
  }

  @override
  Future<UserShortestDTO> updateUser({required UserShortestDTO userDTO, File? profileImage, File? coverImage}) async {
    final currentUserId = await getCurrentUserId();

    final body = userDTO.toJson();

    FormData formData = FormData.fromMap({
      ...body,
      if (profileImage != null)
        'avatar': await MultipartFile.fromFile(profileImage.path, filename: _generateFileName()),
      if (coverImage != null) 'banner': await MultipartFile.fromFile(coverImage.path, filename: _generateFileName()),
    });

    return execute<UserShortestDTO>(
      _iDioClient.patchRequest("/${APIUrls.usersUrl}/records/$currentUserId", formData: formData),
      onSuccess: (response) => UserShortestDTO.fromJson(response.data),
    );
  }

  String _generateFileName() {
    final date = DateTime.now();
    return 'file_${date.toIso8601String()}.png';
  }

  @override
  Future<ListUserShortestResponseDTO> getUsersSearchByUsername({required String userName}) async {
    return execute<ListUserShortestResponseDTO>(
      _iDioClient.getRequest("/${APIUrls.usersUrl}/records", queryParams: {"filter": "(username~'$userName')"}),
      onSuccess: (response) => ListUserShortestResponseDTO.fromJson(response.data),
    );
  }

  @override
  Future<UserShortestDTO> increaseFollowings({
    required List<String> currentUserFollowings,
    required String viewerUserId,
  }) async {
    final currentUserId = await getCurrentUserId();

    final updatedFollowings = List<String>.from(currentUserFollowings)..add(viewerUserId);

    return execute<UserShortestDTO>(
      _iDioClient.patchRequest(
        "/${APIUrls.usersUrl}/records/$currentUserId",
        bodyParams: {'followings': updatedFollowings},
      ),
      onSuccess: (response) => UserShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<UserShortestDTO> decreaseFollowings({
    required List<String> currentUserFollowings,
    required String viewerUserId,
  }) async {
    final currentUserId = await getCurrentUserId();

    final updatedFollowings = List<String>.from(currentUserFollowings)..remove(viewerUserId);

    return execute<UserShortestDTO>(
      _iDioClient.patchRequest(
        "/${APIUrls.usersUrl}/records/$currentUserId",
        bodyParams: {'followings': updatedFollowings},
      ),
      onSuccess: (response) => UserShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> updateInterest(List<String> selectedInterests) async {
    return unit;
  }
}

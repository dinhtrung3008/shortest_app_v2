import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/user_shortest/user_shortest_dto.dart';
import '../../services/current_user/current_user_api_service.dart';

abstract class ICurrentUserRemoteService {
  Future<Option<UserShortestDTO?>> getCurrentUserById();
  Future<UserShortestDTO> updateUser({required UserShortestDTO userDTO, File? profileImage, File? coverImage});
  Future<ListUserShortestResponseDTO> getUsersSearchByUsername({required String userName});
  Future<UserShortestDTO> increaseFollowings({required List<String> currentUserFollowings, required String viewerId});
  Future<UserShortestDTO> decreaseFollowings({required List<String> currentUserFollowings, required String viewerId});
  Future<Unit> updateInterest(List<String> selectedInterests);
}

@LazySingleton(as: ICurrentUserRemoteService)
class CurrentUserRemoteServiceImpl with ExecuteRemoteServiceImpl implements ICurrentUserRemoteService {
  final CurrentUserApiService _currentUserApiService;
  final FlutterSecureStorage _secureStorage;

  CurrentUserRemoteServiceImpl(this._currentUserApiService, this._secureStorage);

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

    return executeApiService<Option<UserShortestDTO?>>(
      _currentUserApiService.getCurrentUserById(userId: currentUserId),
      onSuccess: (response) {
        final userDTO = UserShortestDTO.fromJson(response.data);
        return some(userDTO);
      },
    );
  }

  @override
  Future<UserShortestDTO> updateUser({required UserShortestDTO userDTO, File? profileImage, File? coverImage}) async {
    final currentUserId = await getCurrentUserId();

    MultipartFile? avatarFile;
    MultipartFile? bannerFile;

    if (profileImage != null) {
      avatarFile = await MultipartFile.fromFile(profileImage.path, filename: _generateFileName());
    }

    if (coverImage != null) {
      bannerFile = await MultipartFile.fromFile(coverImage.path, filename: _generateFileName());
    }

    final body = userDTO.toJson();
    return executeApiService<UserShortestDTO>(
      _currentUserApiService.updateUser(
        userId: currentUserId,
        body: body,
        profileImage: avatarFile,
        coverImage: bannerFile,
      ),
      onSuccess: (response) => UserShortestDTO.fromJson(response.data),
    );
  }

  String _generateFileName() {
    final date = DateTime.now();
    return 'file_${date.toIso8601String()}.png';
  }

  @override
  Future<ListUserShortestResponseDTO> getUsersSearchByUsername({required String userName}) async {
    return executeApiService<ListUserShortestResponseDTO>(
      _currentUserApiService.getUsersSearchByUsername(filter: "(username~'$userName')"),
      onSuccess: (response) => ListUserShortestResponseDTO.fromJson(response.data),
    );
  }

  @override
  Future<UserShortestDTO> increaseFollowings({
    required List<String> currentUserFollowings,
    required String viewerId,
  }) async {
    final currentUserId = await getCurrentUserId();
    final updatedFollowings = List<String>.from(currentUserFollowings)..add(viewerId);

    return executeApiService<UserShortestDTO>(
      _currentUserApiService.updateFollowings(userId: currentUserId, body: {'followings': updatedFollowings}),
      onSuccess: (response) => UserShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<UserShortestDTO> decreaseFollowings({
    required List<String> currentUserFollowings,
    required String viewerId,
  }) async {
    final currentUserId = await getCurrentUserId();
    final updatedFollowings = List<String>.from(currentUserFollowings)..remove(viewerId);

    return executeApiService<UserShortestDTO>(
      _currentUserApiService.updateFollowings(userId: currentUserId, body: {'followings': updatedFollowings}),
      onSuccess: (response) => UserShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> updateInterest(List<String> selectedInterests) async {
    final currentUserId = await getCurrentUserId();

    return executeApiService<Unit>(
      _currentUserApiService.updateInterests(userId: currentUserId, body: {'interests': selectedInterests}),
      onSuccess: (_) => unit,
    );
  }
}

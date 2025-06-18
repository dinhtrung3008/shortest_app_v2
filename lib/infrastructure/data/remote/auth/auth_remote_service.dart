import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

import '../../../../../presentation/core/constants/global_constants.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/auth/auth_dto.dart';
import '../../../dtos/user_shortest/user_shortest_dto.dart';
import '../../services/auth/auth_api_service.dart';

abstract class IAuthRemoteService {
  Future<Unit> signInWithEmailAndPassword({required UserShortestDTO userDTO});
  Future<Unit> signUpWithEmailAndPassword({required UserShortestDTO userDTO});
  Future<Unit> requestVerificationEmail({required UserShortestDTO userDTO});
  Future<Unit> requestPasswordReset({required UserShortestDTO userDTO});
  Future<Unit> signOut();
}

@LazySingleton(as: IAuthRemoteService)
class AuthRemoteServiceImpl with ExecuteRemoteServiceImpl implements IAuthRemoteService {
  final AuthApiService _authApiService;
  final FlutterSecureStorage _storage;
  final PocketBase _pocketBase;

  AuthRemoteServiceImpl(this._authApiService, this._storage, this._pocketBase);

  @override
  Future<Unit> signInWithEmailAndPassword({required UserShortestDTO userDTO}) async {
    final body = userDTO.toJson();

    return await executeApiServiceAsync<Unit>(
      _authApiService.signInWithEmail(body: body),
      onSuccess: (response) async {
        final authDTO = AuthDTO.fromJson(response.data);
        final token = authDTO.token;
        final userId = authDTO.user!.id;
        final userJsonString = jsonEncode(authDTO.user!.toDomain().toJson());

        await _storage.write(key: UserConstants.cachedUserKey, value: userJsonString);
        await _storage.write(key: GlobalConstants.accessToken, value: token);
        await _storage.write(key: UserConstants.idField, value: userId);
        return unit;
      },
    );
  }

  @override
  Future<Unit> signUpWithEmailAndPassword({required UserShortestDTO userDTO}) async {
    final body = userDTO.toJson();
    return await executeApiService<Unit>(_authApiService.signUpWithEmail(body: body), onSuccess: (_) => unit);
  }

  @override
  Future<Unit> requestVerificationEmail({required UserShortestDTO userDTO}) async {
    final body = userDTO.toJson();
    return await executeApiService<Unit>(_authApiService.requestVerificationEmail(body: body), onSuccess: (_) => unit);
  }

  @override
  Future<Unit> requestPasswordReset({required UserShortestDTO userDTO}) async {
    final body = userDTO.toJson();
    return await executeApiService<Unit>(_authApiService.requestPasswordReset(body: body), onSuccess: (_) => unit);
  }

  @override
  Future<Unit> signOut() async {
    await _storage.delete(key: GlobalConstants.accessToken);
    await _storage.delete(key: UserConstants.idField);
    _pocketBase.authStore.clear();
    return unit;
  }
}

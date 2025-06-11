import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

import '../../../../../presentation/core/constants/collection_names.dart';
import '../../../../../presentation/core/constants/global_constants.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/authentication/authentication_dto.dart';
import '../../../dtos/user_shortest/user_shortest_dto.dart';
import '../../client/dio_client.dart';

abstract class IAuthenticationRemoteService {
  Future<Unit> signInWithEmailAndPassword({required UserShortestDTO userDTO});
  Future<Unit> signUpWithEmailAndPassword({required UserShortestDTO userDTO});
  Future<Unit> requestVerificationEmail({required UserShortestDTO userDTO});
  Future<Unit> requestPasswordReset({required UserShortestDTO userDTO});
  Future<Unit> signOut();
}

@LazySingleton(as: IAuthenticationRemoteService)
class AuthenticationRemoteServiceImpl with ExecuteRemoteServiceImpl implements IAuthenticationRemoteService {
  final IDioClient _iDioClient;
  final FlutterSecureStorage _storage;
  final PocketBase _pocketBase;

  AuthenticationRemoteServiceImpl(this._iDioClient, this._storage, this._pocketBase);

  @override
  Future<Unit> signInWithEmailAndPassword({required UserShortestDTO userDTO}) async {
    final body = userDTO.toJson();

    return await handleResponseAsync<Unit>(
      _iDioClient.postRequest(
        '/api/collections/${CollectionNames.usersCollection}/auth-with-password',
        bodyParams: body,
      ),
      onSuccess: (response) async {
        final authenticationDTO = AuthenticationDTO.fromJson(response.data);
        final token = authenticationDTO.token;
        final userId = authenticationDTO.user!.id;
        final userJsonString = jsonEncode(authenticationDTO.user!.toDomain().toJson());

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

    return await handleResponse<Unit>(
      _iDioClient.postRequest('/api/collections/${CollectionNames.usersCollection}/records', bodyParams: body),
      onSuccess: (_) => unit,
    );
  }

  @override
  Future<Unit> requestVerificationEmail({required UserShortestDTO userDTO}) async {
    final body = userDTO.toJson();

    return await handleResponse<Unit>(
      _iDioClient.postRequest(
        '/api/collections/${CollectionNames.usersCollection}/request-verification',
        bodyParams: body,
      ),
      onSuccess: (_) => unit,
    );
  }

  @override
  Future<Unit> requestPasswordReset({required UserShortestDTO userDTO}) async {
    final body = userDTO.toJson();

    return await handleResponse<Unit>(
      _iDioClient.postRequest(
        '/api/collections/${CollectionNames.usersCollection}/request-password-reset',
        bodyParams: body,
      ),
      onSuccess: (_) => unit,
    );
  }

  @override
  Future<Unit> signOut() async {
    await _storage.delete(key: GlobalConstants.accessToken);
    await _storage.delete(key: UserConstants.idField);
    _pocketBase.authStore.clear();
    return unit;
  }
}

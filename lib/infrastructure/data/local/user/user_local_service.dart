import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../domain/entities/user_shortest/user_shortest.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../dtos/user_shortest/user_shortest_dto.dart';

abstract class IUserLocalService {
  Future<Unit> caheCurrentUser(UserShortest user);
  Future<UserShortest?> getCachedCurrentUser();
  Future<Unit> deleteCachedCurrentUser();
}

@LazySingleton(as: IUserLocalService)
class UserLocalServiceImpl implements IUserLocalService {
  final FlutterSecureStorage _secureStorage;

  UserLocalServiceImpl(this._secureStorage);

  @override
  Future<Unit> caheCurrentUser(UserShortest user) async {
    try {
      final userJson = jsonEncode(UserShortestDTO.fromDomain(user).toJson());
      await _secureStorage.write(key: UserConstants.cachedCurrentUerKey, value: userJson);
      return unit;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<UserShortest?> getCachedCurrentUser() async {
    try {
      final userJson = await _secureStorage.read(key: UserConstants.cachedCurrentUerKey);

      if (userJson == null) {
        return null;
      }

      final userMap = jsonDecode(userJson);
      final userEntity = UserShortestDTO.fromJson(userMap).toDomain();
      return userEntity;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<Unit> deleteCachedCurrentUser() async {
    try {
      await _secureStorage.delete(key: UserConstants.cachedCurrentUerKey);
      return unit;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}

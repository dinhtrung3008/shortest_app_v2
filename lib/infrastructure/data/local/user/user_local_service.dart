import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../domain/entities/user_shortest/user_shortest.dart';
import '../../../../../presentation/core/constants/user_constants.dart';

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
      final userJson = jsonEncode(user.toJson());
      await _secureStorage.write(key: UserConstants.cachedUserKey, value: userJson);
      return unit;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<UserShortest?> getCachedCurrentUser() async {
    try {
      final userJson = await _secureStorage.read(key: UserConstants.cachedUserKey);

      if (userJson == null) {
        return null;
      }

      final userMap = jsonDecode(userJson);
      final userEntity = UserShortest.fromJson(userMap);
      return userEntity;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<Unit> deleteCachedCurrentUser() async {
    try {
      await _secureStorage.delete(key: UserConstants.cachedUserKey);
      return unit;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}

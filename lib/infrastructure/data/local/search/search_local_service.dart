import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../domain/entities/user_shortest/user_shortest.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../dtos/user_shortest/user_shortest_dto.dart';

abstract class ISearchLocalService {
  Future<Unit> cacheListSearchHistory(UserShortest userEntity);
  Future<List<UserShortest>> getListSearchHistory();
  Future<Unit> deleteListSearchHistory();
}

@LazySingleton(as: ISearchLocalService)
class SearchLocalServiceImpl implements ISearchLocalService {
  final FlutterSecureStorage _secureStorage;

  SearchLocalServiceImpl(this._secureStorage);

  @override
  Future<Unit> cacheListSearchHistory(UserShortest userEntity) async {
    try {
      final cachedHistoryJson = await _secureStorage.read(key: UserConstants.cachedListSearchHistoryKey);

      List<UserShortest> searchHistory =
          cachedHistoryJson != null
              ? (jsonDecode(cachedHistoryJson) as List).map((e) => UserShortestDTO.fromJson(e).toDomain()).toList()
              : [];

      if (!searchHistory.any((user) => user.id == userEntity.id)) {
        searchHistory.add(userEntity);
      }

      if (searchHistory.length > 10) {
        searchHistory = searchHistory.sublist(searchHistory.length - 10);
      }

      final updatedHistoryJson = jsonEncode(
        searchHistory.map((user) => UserShortestDTO.fromDomain(user).toJson()).toList(),
      );
      await _secureStorage.write(key: UserConstants.cachedListSearchHistoryKey, value: updatedHistoryJson);

      return unit;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<List<UserShortest>> getListSearchHistory() async {
    try {
      final searchHistoryJson = await _secureStorage.read(key: UserConstants.cachedListSearchHistoryKey);

      if (searchHistoryJson == null) {
        return [];
      }

      final List<UserShortest> searchHistoryList =
          (jsonDecode(searchHistoryJson) as List).map((e) => UserShortestDTO.fromJson(e).toDomain()).toList();

      return searchHistoryList;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<Unit> deleteListSearchHistory() async {
    try {
      await _secureStorage.delete(key: UserConstants.cachedListSearchHistoryKey);
      return unit;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}

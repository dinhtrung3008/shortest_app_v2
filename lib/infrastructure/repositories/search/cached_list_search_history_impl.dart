import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/user_shortest/user_shortest.dart';
import '../../../../domain/repositories/search/i_search_repository.dart';
import '../../data/local/search/search_local_service.dart';

@LazySingleton(as: ICachedListSearchHistory)
class CachedListSearchHistoryImpl implements ICachedListSearchHistory {
  final ISearchLocalService _iSearchLocalService;

  CachedListSearchHistoryImpl(this._iSearchLocalService);

  @override
  Future<Unit> call(UserShortest userEntity) async {
    return await _iSearchLocalService.cacheListSearchHistory(userEntity);
  }
}

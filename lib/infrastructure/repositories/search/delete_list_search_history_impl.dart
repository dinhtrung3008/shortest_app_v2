import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/repositories/search/i_search_repository.dart';
import '../../data/local/search/search_local_service.dart';

@LazySingleton(as: IDeleteListSearchHistory)
class DeleteListSearchHistoryImpl implements IDeleteListSearchHistory {
  final ISearchLocalService _iSearchLocalService;

  DeleteListSearchHistoryImpl(this._iSearchLocalService);

  @override
  Future<Unit> call() async {
    await _iSearchLocalService.deleteListSearchHistory();
    return unit;
  }
}

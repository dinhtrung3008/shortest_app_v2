import 'package:injectable/injectable.dart';

import '../../../../domain/entities/user_shortest/user_shortest.dart';
import '../../../../domain/repositories/search/i_search_repository.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/local/search/search_local_service.dart';

@LazySingleton(as: IGetListSearchHistory)
class GetListSearchHistoryImpl with ExecuteRepositoryImpl implements IGetListSearchHistory {
  final ISearchLocalService _iSearchLocalService;

  GetListSearchHistoryImpl(this._iSearchLocalService);

  @override
  Future<List<UserShortest>> call() async {
    final searchLocal = await _iSearchLocalService.getListSearchHistory();
    return searchLocal;
  }
}

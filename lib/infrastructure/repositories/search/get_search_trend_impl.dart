import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/post_shortest/post_shortest.dart';
import '../../../../domain/repositories/search/i_search_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/search_trend/search_trend_remote_service.dart';

@LazySingleton(as: IGetSearchTrend)
class GetSearchTrendImpl with ExecuteRepositoryImpl, ConnectionChecker implements IGetSearchTrend {
  final ISearchTrendRemoteService _iSearchTrendRemoteService;

  GetSearchTrendImpl(this._iSearchTrendRemoteService);

  @override
  Future<Either<BaseFailure, List<PostShortest>?>> call({
    int page = 1,
    int perPage = 10,
    int minLikesCount = 1,
    int minViewsCount = 10,
  }) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<List<PostShortest>?>(
      action: () async {
        final response = await _iSearchTrendRemoteService.getSearchTrend(
          page: page,
          perPage: perPage,
          minLikesCount: minLikesCount,
          minViewsCount: minViewsCount,
        );

        if (response.postsShortest != null) {
          if (response.postsShortest?.isNotEmpty == true) {
            final searchTrends = response.postsShortest?.map((e) => e.toDomain()).toList();
            return right(searchTrends);
          }
        }
        return right([]);
      },
    );
  }
}

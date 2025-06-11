import 'package:dartz/dartz.dart';

import '../../core/failures/base_failure.dart';
import '../../entities/post_shortest/post_shortest.dart';
import '../../entities/user_shortest/user_shortest.dart';

abstract class IRequestListSearch {
  Future<Either<BaseFailure, List<UserShortest>?>> call({required String userName});
}

abstract class IGetListSearchHistory {
  Future<List<UserShortest>> call();
}

abstract class IDeleteListSearchHistory {
  Future<Unit> call();
}

abstract class ICachedListSearchHistory {
  Future<Unit> call(UserShortest userEntity);
}

abstract class IGetSearchTrend {
  Future<Either<BaseFailure, List<PostShortest>?>> call({
    int page = 1,
    int perPage = 10,
    int minLikesCount = 1,
    int minViewsCount = 10,
  });
}

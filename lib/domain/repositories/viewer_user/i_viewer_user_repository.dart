import 'package:dartz/dartz.dart';

import '../../core/failures/base_failure.dart';
import '../../entities/user_shortest/user_shortest.dart';

abstract class IGetViewerById {
  Future<Either<BaseFailure, UserShortest>> call({required String viewerId});
}

abstract class IIncreaseFollowers {
  Future<Either<BaseFailure, UserShortest>> call({required List<String> viewerFollowers, required String viewerId});
}

abstract class IDecreaseFollowers {
  Future<Either<BaseFailure, UserShortest>> call({required List<String> viewerFollowers, required String viewerId});
}

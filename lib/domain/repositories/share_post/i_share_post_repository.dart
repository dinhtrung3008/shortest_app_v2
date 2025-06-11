import 'package:dartz/dartz.dart';

import '../../core/failures/base_failure.dart';
import '../../entities/share_post/share_post.dart';

abstract class IAddSharePost {
  Future<Either<BaseFailure, SharePost>> call({required String postId});
}

abstract class IUpdateSharePost {
  Future<Either<BaseFailure, SharePost>> call({required String sharePostId});
}

abstract class IGetSharePostsByPostId {
  Future<Either<BaseFailure, List<SharePost>?>> call({
    required String postId,
    int page = 1,
    int perPage = 10,
  });
}

abstract class IDeleteSharePost {
  Future<Either<BaseFailure, Unit>> call({required String sharePostId});
}

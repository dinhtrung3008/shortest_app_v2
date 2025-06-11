import 'package:dartz/dartz.dart';

import '../../core/failures/base_failure.dart';
import '../../entities/like_post/like_post.dart';

abstract class ILikePost {
  Future<Either<BaseFailure, LikePost>> call({required String postId});
}

abstract class IUnlikePost {
  Future<Either<BaseFailure, Unit>> call({required String likePostId});
}

abstract class IGetLikesByPostId {
  Future<Either<BaseFailure, List<LikePost>?>> call({
    required String postId,
    int page = 1,
    int perPage = 10,
  });
}

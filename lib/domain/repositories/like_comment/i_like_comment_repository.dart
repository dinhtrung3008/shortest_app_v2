import 'package:dartz/dartz.dart';

import '../../core/failures/base_failure.dart';
import '../../entities/like_comment/like_comment.dart';

abstract class ILikeComment {
  Future<Either<BaseFailure, LikeComment>> call({required String commentId});
}

abstract class IUnlikeComment {
  Future<Either<BaseFailure, LikeComment>> call({required String likeCommentId});
}

abstract class IGetLikesCommentByCommentId {
  Future<Either<BaseFailure, List<LikeComment>?>> call({
    required String commentId,
    int page = 1,
    int perPage = 10,
  });
}
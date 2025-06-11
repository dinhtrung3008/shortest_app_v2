import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/failures/base_failure.dart';
import '../../entities/comment_post/comment_post.dart';

abstract class IAddCommentPost {
  Future<Either<BaseFailure, CommentPost>> call({
    required String content,
    required String postId,
    List<XFile>? mediaFiles,
  });
}

abstract class IUpdateCommentPost {
  Future<Either<BaseFailure, CommentPost>> call({
    required String commentId,
    required String newContent,
    List<XFile>? mediaFiles,
  });
}

abstract class IGetCommentsByPostId {
  Future<Either<BaseFailure, List<CommentPost>?>> call({int page = 1, int perPage = 10, required String postId});
}

abstract class IDeleteCommentPost {
  Future<Either<BaseFailure, Unit>> call({required String commentId});
}
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/failures/base_failure.dart';
import '../../entities/post_shortest/post_shortest.dart';

abstract class ICreatePost {
  Future<Either<BaseFailure, PostShortest>> call({
    required String content,
    required String owner,
    required String visibility,
    required String type,
    List<XFile>? mediaFiles,
  });
}

abstract class IUpdatePost {
  Future<Either<BaseFailure, PostShortest>> call({
    required String postId,
    String? content,
    String? visibility,
    List<XFile>? mediaFiles,
  });
}

abstract class IGetPosts {
  Future<Either<BaseFailure, List<PostShortest>?>> call({
    int page = 1,
    int perPage = 10,
    String filter = "",
  });
}

abstract class IGetPostById {
  Future<Either<BaseFailure, PostShortest>> call({required String postId});
}

abstract class IDeletePost {
  Future<Either<BaseFailure, Unit>> call({required String postId});
}

abstract class IIncreaseLikesPostCount {
  Future<Either<BaseFailure, PostShortest>> call({required String postId});
}

abstract class IDecreaseLikesPostCount {
  Future<Either<BaseFailure, PostShortest>> call({required String postId});
}

abstract class IIncreaseCommentsPostCount {
  Future<Either<BaseFailure, PostShortest>> call({required String postId});
}

abstract class IDecreaseCommentsPostCount {
  Future<Either<BaseFailure, PostShortest>> call({required String postId});
}

abstract class IIncreaseSharesPostCount {
  Future<Either<BaseFailure, PostShortest>> call({required String postId});
}

abstract class IDecreaseSharesPostCount {
  Future<Either<BaseFailure, PostShortest>> call({required String postId});
}

abstract class IIncreaseViewsPostCount {
  Future<Either<BaseFailure, PostShortest>> call({required String postId});
}

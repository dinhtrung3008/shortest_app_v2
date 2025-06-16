import 'package:freezed_annotation/freezed_annotation.dart';

import '../post_shortest/post_shortest.dart';
import '../user_shortest/user_shortest.dart';

part 'like_post.freezed.dart';

@freezed
abstract class LikePost with _$LikePost {
  const LikePost._();

  const factory LikePost({
    required String likePostId,
    required String owner,
    required String postOwner,
    required DateTime created,
    required DateTime updated,
    required String collectionId,
    required String collectionName,
    LikePostExpand? expand,
  }) = _LikePost;
}

@freezed
abstract class LikePostExpand with _$LikePostExpand {
  const LikePostExpand._();

  const factory LikePostExpand({UserShortest? owner, PostShortest? postOwner}) = _LikePostExpand;
}

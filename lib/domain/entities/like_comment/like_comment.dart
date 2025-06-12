import 'package:freezed_annotation/freezed_annotation.dart';

import '../comment_post/comment_post.dart';
import '../user_shortest/user_shortest.dart';

part 'like_comment.freezed.dart';
part 'like_comment.g.dart';

@freezed
abstract class LikeComment with _$LikeComment {
  const LikeComment._();

  const factory LikeComment({
    required String likeCommentId,
    required String owner,
    required String commentOwner,
    required String collectionId,
    required String collectionName,
    required DateTime created,
    required DateTime updated,
    LikeCommentExpand? expand,
  }) = _LikeComment;

  factory LikeComment.fromJson(Map<String, dynamic> json) =>
      _$LikeCommentFromJson(json);
}

@freezed
abstract class LikeCommentExpand with _$LikeCommentExpand {
  const LikeCommentExpand._();

  const factory LikeCommentExpand({
    UserShortest? owner,
    CommentPost? commentOwner,
  }) = _LikeCommentExpand;

  factory LikeCommentExpand.fromJson(Map<String, dynamic> json) =>
      _$LikeCommentExpandFromJson(json);
}

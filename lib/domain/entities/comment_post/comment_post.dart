import 'package:freezed_annotation/freezed_annotation.dart';

import '../post_shortest/post_shortest.dart';
import '../user_shortest/user_shortest.dart';

part 'comment_post.freezed.dart';

@freezed
abstract class CommentPost with _$CommentPost {
  const CommentPost._();

  const factory CommentPost({
    required String commentPostId,
    required String content,
    required String owner,
    List<String>? mediaUrls,
    required String postOwner,
    required DateTime created,
    required DateTime updated,
    required String collectionId,
    required String collectionName,
    CommentPostExpand? expand,
  }) = _CommentPost;

  bool get isEdited {
    return updated.isAfter(created);
  }
}

@freezed
abstract class CommentPostExpand with _$CommentPostExpand {
  const CommentPostExpand._();

  const factory CommentPostExpand({
    UserShortest? owner,
    PostShortest? postOwner,
  }) = _CommentPostExpand;

}

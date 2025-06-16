import 'package:freezed_annotation/freezed_annotation.dart';

import '../post_shortest/post_shortest.dart';
import '../user_shortest/user_shortest.dart';

part 'share_post.freezed.dart';

@freezed
abstract class SharePost with _$SharePost {
  const SharePost._();

  const factory SharePost({
    String? sharePostId,
    String? owner,
    String? postOwner,
    DateTime? created,
    DateTime? updated,
    String? collectionId,
    String? collectionName,
    SharePostExpand? expand,
    @Default(0) int? likesCount,
  }) = _SharePost;

}

@freezed
abstract class SharePostExpand with _$SharePostExpand {
  const SharePostExpand._();

  const factory SharePostExpand({
    UserShortest? owner,
    PostShortest? postOwner,
  }) = _SharePostExpand;

  
}

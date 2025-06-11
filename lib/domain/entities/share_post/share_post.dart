import 'package:freezed_annotation/freezed_annotation.dart';

import '../post_shortest/post_shortest.dart';
import '../user_shortest/user_shortest.dart';

part 'share_post.freezed.dart';
part 'share_post.g.dart';

@freezed
class SharePost with _$SharePost {
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

  factory SharePost.fromJson(Map<String, dynamic> json) => _$SharePostFromJson(json);
}

@freezed
class SharePostExpand with _$SharePostExpand {
  const SharePostExpand._();

  const factory SharePostExpand({
    UserShortest? owner,
    PostShortest? postOwner,
  }) = _SharePostExpand;

  factory SharePostExpand.fromJson(Map<String, dynamic> json) => _$SharePostExpandFromJson(json);
}

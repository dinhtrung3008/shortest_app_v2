import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/core/enums/type_post_enum.dart';
import '../../../presentation/core/enums/visibility_enum.dart';
import '../user_shortest/user_shortest.dart';

part 'post_shortest.freezed.dart';
part 'post_shortest.g.dart';

@freezed
abstract class PostShortest with _$PostShortest {
  const PostShortest._();

  const factory PostShortest({
    required String postId,
    List<String>? mediaUrls,
    required String content,
    required VisibilityEnum visibility,
    required TypePostEnum type,
    required String owner,
    required int viewsCount,
    required int likesCount,
    required int commentsCount,
    required int sharesCount,
    required List<String> likes,
    required List<String> comments,
    required List<String> shares,
    required DateTime created,
    required DateTime updated,
    required String collectionId,
    required String collectionName,
    PostShortestOwnerExpand? ownerExpand,
  }) = _PostShortest;

  bool mediasAreNotEmpty() => mediaUrls != null && mediaUrls!.isNotEmpty;

  factory PostShortest.fromJson(Map<String, dynamic> json) =>
      _$PostShortestFromJson(json);
}

@freezed
abstract class PostShortestOwnerExpand with _$PostShortestOwnerExpand {
  const PostShortestOwnerExpand._();

  const factory PostShortestOwnerExpand({UserShortest? owner}) =
      _PostShortestOwnerExpand;

  factory PostShortestOwnerExpand.fromJson(Map<String, dynamic> json) =>
      _$PostShortestOwnerExpandFromJson(json);
}

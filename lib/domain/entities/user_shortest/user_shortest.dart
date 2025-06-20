import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_shortest.freezed.dart';

@freezed
abstract class UserShortest with _$UserShortest {
  const UserShortest._();

  const factory UserShortest({
    required String id,
    required String username,
    required String email,
    String? bio,
    required String collectionId,
    required String collectionName,
    bool? verified,
    bool? popular,
    required bool emailVisibility,
    String? avatar,
    String? banner,
    DateTime? birthDate,
    String? phoneNumber,
    String? gender,
    String? address,
    List<String>? friendsRequest,
    List<String>? followings,
    List<String>? followers,
    required DateTime created,
    required DateTime updated,
    List<String>? interests,
    List<String>? likedPosts,
    List<String>? viewedPosts,
    List<String>? savedPosts,
  }) = _UserShortest;

  bool get isPopular {
    return (followings?.length ?? 0) >= 1;
  }

  bool isMe(String currentUserId, String otherUserId) => currentUserId == otherUserId;
}

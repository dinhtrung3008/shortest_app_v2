// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_shortest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserShortestImpl _$$UserShortestImplFromJson(
  Map<String, dynamic> json,
) => _$UserShortestImpl(
  id: json['id'] as String,
  username: json['username'] as String,
  email: json['email'] as String,
  bio: json['bio'] as String?,
  collectionId: json['collectionId'] as String,
  collectionName: json['collectionName'] as String,
  verified: json['verified'] as bool?,
  popular: json['popular'] as bool?,
  emailVisibility: json['emailVisibility'] as bool,
  avatar: json['avatar'] as String?,
  banner: json['banner'] as String?,
  birthDate:
      json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
  phoneNumber: json['phoneNumber'] as String?,
  gender: json['gender'] as String?,
  address: json['address'] as String?,
  friendsRequest:
      (json['friendsRequest'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  followings:
      (json['followings'] as List<dynamic>?)?.map((e) => e as String).toList(),
  followers:
      (json['followers'] as List<dynamic>?)?.map((e) => e as String).toList(),
  created: DateTime.parse(json['created'] as String),
  updated: DateTime.parse(json['updated'] as String),
  interests:
      (json['interests'] as List<dynamic>?)?.map((e) => e as String).toList(),
  likedPosts:
      (json['likedPosts'] as List<dynamic>?)?.map((e) => e as String).toList(),
  viewedPosts:
      (json['viewedPosts'] as List<dynamic>?)?.map((e) => e as String).toList(),
  savedPosts:
      (json['savedPosts'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$$UserShortestImplToJson(_$UserShortestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'bio': instance.bio,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'verified': instance.verified,
      'popular': instance.popular,
      'emailVisibility': instance.emailVisibility,
      'avatar': instance.avatar,
      'banner': instance.banner,
      'birthDate': instance.birthDate?.toIso8601String(),
      'phoneNumber': instance.phoneNumber,
      'gender': instance.gender,
      'address': instance.address,
      'friendsRequest': instance.friendsRequest,
      'followings': instance.followings,
      'followers': instance.followers,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'interests': instance.interests,
      'likedPosts': instance.likedPosts,
      'viewedPosts': instance.viewedPosts,
      'savedPosts': instance.savedPosts,
    };

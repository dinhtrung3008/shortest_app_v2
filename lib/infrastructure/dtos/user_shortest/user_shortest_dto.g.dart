// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_shortest_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListUserShortestResponseDTO _$ListUserShortestResponseDTOFromJson(
  Map<String, dynamic> json,
) => ListUserShortestResponseDTO(
  page: (json['page'] as num?)?.toInt(),
  perPage: (json['perPage'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  totalItems: (json['totalItems'] as num?)?.toInt(),
  usersShortest:
      (json['items'] as List<dynamic>?)
          ?.map((e) => UserShortestDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ListUserShortestResponseDTOToJson(
  ListUserShortestResponseDTO instance,
) => <String, dynamic>{
  if (instance.page case final value?) 'page': value,
  if (instance.perPage case final value?) 'perPage': value,
  if (instance.totalPages case final value?) 'totalPages': value,
  if (instance.totalItems case final value?) 'totalItems': value,
  if (instance.usersShortest case final value?) 'items': value,
};

UserShortestDTO _$UserShortestDTOFromJson(
  Map<String, dynamic> json,
) => UserShortestDTO(
  id: json['id'] as String?,
  identity: json['identity'] as String?,
  username: json['username'] as String?,
  email: json['email'] as String?,
  bio: json['bio'] as String?,
  collectionId: json['collectionId'] as String?,
  collectionName: json['collectionName'] as String?,
  verified: json['verified'] as bool?,
  popular: json['popular'] as bool?,
  emailVisibility: json['emailVisibility'] as bool?,
  password: json['password'] as String?,
  passwordConfirm: json['passwordConfirm'] as String?,
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
  created:
      json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
  updated:
      json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
  interests:
      (json['interests'] as List<dynamic>?)?.map((e) => e as String).toList(),
  likedPosts:
      (json['likedPosts'] as List<dynamic>?)?.map((e) => e as String).toList(),
  viewedPosts:
      (json['viewedPosts'] as List<dynamic>?)?.map((e) => e as String).toList(),
  savedPosts:
      (json['savedPosts'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$UserShortestDTOToJson(
  UserShortestDTO instance,
) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.identity case final value?) 'identity': value,
  if (instance.username case final value?) 'username': value,
  if (instance.email case final value?) 'email': value,
  if (instance.bio case final value?) 'bio': value,
  if (instance.collectionId case final value?) 'collectionId': value,
  if (instance.collectionName case final value?) 'collectionName': value,
  if (instance.verified case final value?) 'verified': value,
  if (instance.popular case final value?) 'popular': value,
  if (instance.emailVisibility case final value?) 'emailVisibility': value,
  if (instance.password case final value?) 'password': value,
  if (instance.passwordConfirm case final value?) 'passwordConfirm': value,
  if (instance.avatar case final value?) 'avatar': value,
  if (instance.banner case final value?) 'banner': value,
  if (instance.birthDate?.toIso8601String() case final value?)
    'birthDate': value,
  if (instance.phoneNumber case final value?) 'phoneNumber': value,
  if (instance.gender case final value?) 'gender': value,
  if (instance.address case final value?) 'address': value,
  if (instance.friendsRequest case final value?) 'friendsRequest': value,
  if (instance.followings case final value?) 'followings': value,
  if (instance.followers case final value?) 'followers': value,
  if (instance.created?.toIso8601String() case final value?) 'created': value,
  if (instance.updated?.toIso8601String() case final value?) 'updated': value,
  if (instance.interests case final value?) 'interests': value,
  if (instance.likedPosts case final value?) 'likedPosts': value,
  if (instance.viewedPosts case final value?) 'viewedPosts': value,
  if (instance.savedPosts case final value?) 'savedPosts': value,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LikePost _$LikePostFromJson(Map<String, dynamic> json) => _LikePost(
  likePostId: json['likePostId'] as String,
  owner: json['owner'] as String,
  postOwner: json['postOwner'] as String,
  created: DateTime.parse(json['created'] as String),
  updated: DateTime.parse(json['updated'] as String),
  collectionId: json['collectionId'] as String,
  collectionName: json['collectionName'] as String,
  expand:
      json['expand'] == null
          ? null
          : LikePostExpand.fromJson(json['expand'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LikePostToJson(_LikePost instance) => <String, dynamic>{
  'likePostId': instance.likePostId,
  'owner': instance.owner,
  'postOwner': instance.postOwner,
  'created': instance.created.toIso8601String(),
  'updated': instance.updated.toIso8601String(),
  'collectionId': instance.collectionId,
  'collectionName': instance.collectionName,
  'expand': instance.expand,
};

_LikePostExpand _$LikePostExpandFromJson(Map<String, dynamic> json) =>
    _LikePostExpand(
      owner:
          json['owner'] == null
              ? null
              : UserShortest.fromJson(json['owner'] as Map<String, dynamic>),
      postOwner:
          json['postOwner'] == null
              ? null
              : PostShortest.fromJson(
                json['postOwner'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$LikePostExpandToJson(_LikePostExpand instance) =>
    <String, dynamic>{'owner': instance.owner, 'postOwner': instance.postOwner};

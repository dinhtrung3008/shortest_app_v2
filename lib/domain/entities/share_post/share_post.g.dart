// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SharePost _$SharePostFromJson(Map<String, dynamic> json) => _SharePost(
  sharePostId: json['sharePostId'] as String?,
  owner: json['owner'] as String?,
  postOwner: json['postOwner'] as String?,
  created:
      json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
  updated:
      json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
  collectionId: json['collectionId'] as String?,
  collectionName: json['collectionName'] as String?,
  expand:
      json['expand'] == null
          ? null
          : SharePostExpand.fromJson(json['expand'] as Map<String, dynamic>),
  likesCount: (json['likesCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$SharePostToJson(_SharePost instance) =>
    <String, dynamic>{
      'sharePostId': instance.sharePostId,
      'owner': instance.owner,
      'postOwner': instance.postOwner,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'expand': instance.expand,
      'likesCount': instance.likesCount,
    };

_SharePostExpand _$SharePostExpandFromJson(Map<String, dynamic> json) =>
    _SharePostExpand(
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

Map<String, dynamic> _$SharePostExpandToJson(_SharePostExpand instance) =>
    <String, dynamic>{'owner': instance.owner, 'postOwner': instance.postOwner};

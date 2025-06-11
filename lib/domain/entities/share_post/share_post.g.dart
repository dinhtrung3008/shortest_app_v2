// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SharePostImpl _$$SharePostImplFromJson(Map<String, dynamic> json) =>
    _$SharePostImpl(
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
              : SharePostExpand.fromJson(
                json['expand'] as Map<String, dynamic>,
              ),
      likesCount: (json['likesCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SharePostImplToJson(_$SharePostImpl instance) =>
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

_$SharePostExpandImpl _$$SharePostExpandImplFromJson(
  Map<String, dynamic> json,
) => _$SharePostExpandImpl(
  owner:
      json['owner'] == null
          ? null
          : UserShortest.fromJson(json['owner'] as Map<String, dynamic>),
  postOwner:
      json['postOwner'] == null
          ? null
          : PostShortest.fromJson(json['postOwner'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$SharePostExpandImplToJson(
  _$SharePostExpandImpl instance,
) => <String, dynamic>{
  'owner': instance.owner,
  'postOwner': instance.postOwner,
};

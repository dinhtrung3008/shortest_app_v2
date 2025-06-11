// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentPostImpl _$$CommentPostImplFromJson(
  Map<String, dynamic> json,
) => _$CommentPostImpl(
  commentPostId: json['commentPostId'] as String,
  content: json['content'] as String,
  owner: json['owner'] as String,
  mediaUrls:
      (json['mediaUrls'] as List<dynamic>?)?.map((e) => e as String).toList(),
  postOwner: json['postOwner'] as String,
  created: DateTime.parse(json['created'] as String),
  updated: DateTime.parse(json['updated'] as String),
  collectionId: json['collectionId'] as String,
  collectionName: json['collectionName'] as String,
  expand:
      json['expand'] == null
          ? null
          : CommentPostExpand.fromJson(json['expand'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CommentPostImplToJson(_$CommentPostImpl instance) =>
    <String, dynamic>{
      'commentPostId': instance.commentPostId,
      'content': instance.content,
      'owner': instance.owner,
      'mediaUrls': instance.mediaUrls,
      'postOwner': instance.postOwner,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'expand': instance.expand,
    };

_$CommentPostExpandImpl _$$CommentPostExpandImplFromJson(
  Map<String, dynamic> json,
) => _$CommentPostExpandImpl(
  owner:
      json['owner'] == null
          ? null
          : UserShortest.fromJson(json['owner'] as Map<String, dynamic>),
  postOwner:
      json['postOwner'] == null
          ? null
          : PostShortest.fromJson(json['postOwner'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CommentPostExpandImplToJson(
  _$CommentPostExpandImpl instance,
) => <String, dynamic>{
  'owner': instance.owner,
  'postOwner': instance.postOwner,
};

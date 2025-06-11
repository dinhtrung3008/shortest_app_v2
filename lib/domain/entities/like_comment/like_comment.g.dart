// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikeCommentImpl _$$LikeCommentImplFromJson(Map<String, dynamic> json) =>
    _$LikeCommentImpl(
      likeCommentId: json['likeCommentId'] as String,
      owner: json['owner'] as String,
      commentOwner: json['commentOwner'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      expand:
          json['expand'] == null
              ? null
              : LikeCommentExpand.fromJson(
                json['expand'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$$LikeCommentImplToJson(_$LikeCommentImpl instance) =>
    <String, dynamic>{
      'likeCommentId': instance.likeCommentId,
      'owner': instance.owner,
      'commentOwner': instance.commentOwner,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'expand': instance.expand,
    };

_$LikeCommentExpandImpl _$$LikeCommentExpandImplFromJson(
  Map<String, dynamic> json,
) => _$LikeCommentExpandImpl(
  owner:
      json['owner'] == null
          ? null
          : UserShortest.fromJson(json['owner'] as Map<String, dynamic>),
  commentOwner:
      json['commentOwner'] == null
          ? null
          : CommentPost.fromJson(json['commentOwner'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$LikeCommentExpandImplToJson(
  _$LikeCommentExpandImpl instance,
) => <String, dynamic>{
  'owner': instance.owner,
  'commentOwner': instance.commentOwner,
};

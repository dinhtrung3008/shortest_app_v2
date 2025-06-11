// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_shortest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostShortestImpl _$$PostShortestImplFromJson(
  Map<String, dynamic> json,
) => _$PostShortestImpl(
  postId: json['postId'] as String,
  mediaUrls:
      (json['mediaUrls'] as List<dynamic>?)?.map((e) => e as String).toList(),
  content: json['content'] as String,
  visibility: $enumDecode(_$VisibilityEnumEnumMap, json['visibility']),
  type: $enumDecode(_$TypePostEnumEnumMap, json['type']),
  owner: json['owner'] as String,
  viewsCount: (json['viewsCount'] as num).toInt(),
  likesCount: (json['likesCount'] as num).toInt(),
  commentsCount: (json['commentsCount'] as num).toInt(),
  sharesCount: (json['sharesCount'] as num).toInt(),
  likes: (json['likes'] as List<dynamic>).map((e) => e as String).toList(),
  comments:
      (json['comments'] as List<dynamic>).map((e) => e as String).toList(),
  shares: (json['shares'] as List<dynamic>).map((e) => e as String).toList(),
  created: DateTime.parse(json['created'] as String),
  updated: DateTime.parse(json['updated'] as String),
  collectionId: json['collectionId'] as String,
  collectionName: json['collectionName'] as String,
  ownerExpand:
      json['ownerExpand'] == null
          ? null
          : PostShortestOwnerExpand.fromJson(
            json['ownerExpand'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$PostShortestImplToJson(_$PostShortestImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'mediaUrls': instance.mediaUrls,
      'content': instance.content,
      'visibility': _$VisibilityEnumEnumMap[instance.visibility]!,
      'type': _$TypePostEnumEnumMap[instance.type]!,
      'owner': instance.owner,
      'viewsCount': instance.viewsCount,
      'likesCount': instance.likesCount,
      'commentsCount': instance.commentsCount,
      'sharesCount': instance.sharesCount,
      'likes': instance.likes,
      'comments': instance.comments,
      'shares': instance.shares,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'ownerExpand': instance.ownerExpand,
    };

const _$VisibilityEnumEnumMap = {
  VisibilityEnum.public: 'public',
  VisibilityEnum.private: 'private',
  VisibilityEnum.except: 'except',
};

const _$TypePostEnumEnumMap = {
  TypePostEnum.self: 'self',
  TypePostEnum.shared: 'shared',
};

_$PostShortestOwnerExpandImpl _$$PostShortestOwnerExpandImplFromJson(
  Map<String, dynamic> json,
) => _$PostShortestOwnerExpandImpl(
  owner:
      json['owner'] == null
          ? null
          : UserShortest.fromJson(json['owner'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PostShortestOwnerExpandImplToJson(
  _$PostShortestOwnerExpandImpl instance,
) => <String, dynamic>{'owner': instance.owner};

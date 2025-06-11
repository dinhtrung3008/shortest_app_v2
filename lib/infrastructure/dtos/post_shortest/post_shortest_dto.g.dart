// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_shortest_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListPostShortestResponseDTO _$ListPostShortestResponseDTOFromJson(
  Map<String, dynamic> json,
) => ListPostShortestResponseDTO(
  page: (json['page'] as num?)?.toInt(),
  perPage: (json['perPage'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  totalItems: (json['totalItems'] as num?)?.toInt(),
  postsShortest:
      (json['items'] as List<dynamic>?)
          ?.map((e) => PostShortestDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ListPostShortestResponseDTOToJson(
  ListPostShortestResponseDTO instance,
) => <String, dynamic>{
  if (instance.page case final value?) 'page': value,
  if (instance.perPage case final value?) 'perPage': value,
  if (instance.totalPages case final value?) 'totalPages': value,
  if (instance.totalItems case final value?) 'totalItems': value,
  if (instance.postsShortest case final value?) 'items': value,
};

PostShortestDTO _$PostShortestDTOFromJson(
  Map<String, dynamic> json,
) => PostShortestDTO(
  postId: json['id'] as String?,
  mediaUrls:
      (json['mediaUrls'] as List<dynamic>?)?.map((e) => e as String).toList(),
  content: json['content'] as String?,
  visibility: json['visibility'] as String?,
  type: json['type'] as String?,
  owner: json['owner'] as String?,
  viewsCount: (json['viewsCount'] as num?)?.toInt(),
  likesCount: (json['likesCount'] as num?)?.toInt(),
  commentsCount: (json['commentsCount'] as num?)?.toInt(),
  sharesCount: (json['sharesCount'] as num?)?.toInt(),
  likes: (json['likes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  comments:
      (json['comments'] as List<dynamic>?)?.map((e) => e as String).toList(),
  shares: (json['shares'] as List<dynamic>?)?.map((e) => e as String).toList(),
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
  ownerExpand:
      json['expand'] == null
          ? null
          : PostShortestOwnerExpandDTO.fromJson(
            json['expand'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$PostShortestDTOToJson(
  PostShortestDTO instance,
) => <String, dynamic>{
  if (instance.postId case final value?) 'id': value,
  if (instance.mediaUrls case final value?) 'mediaUrls': value,
  if (instance.content case final value?) 'content': value,
  if (instance.visibility case final value?) 'visibility': value,
  if (instance.type case final value?) 'type': value,
  if (instance.owner case final value?) 'owner': value,
  if (instance.viewsCount case final value?) 'viewsCount': value,
  if (instance.likesCount case final value?) 'likesCount': value,
  if (instance.commentsCount case final value?) 'commentsCount': value,
  if (instance.sharesCount case final value?) 'sharesCount': value,
  if (instance.likes case final value?) 'likes': value,
  if (instance.comments case final value?) 'comments': value,
  if (instance.shares case final value?) 'shares': value,
  if (instance.created?.toIso8601String() case final value?) 'created': value,
  if (instance.updated?.toIso8601String() case final value?) 'updated': value,
  if (instance.collectionId case final value?) 'collectionId': value,
  if (instance.collectionName case final value?) 'collectionName': value,
  if (instance.ownerExpand case final value?) 'expand': value,
};

PostShortestOwnerExpandDTO _$PostShortestOwnerExpandDTOFromJson(
  Map<String, dynamic> json,
) => PostShortestOwnerExpandDTO(
  owner:
      json['owner'] == null
          ? null
          : UserShortestDTO.fromJson(json['owner'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PostShortestOwnerExpandDTOToJson(
  PostShortestOwnerExpandDTO instance,
) => <String, dynamic>{if (instance.owner case final value?) 'owner': value};

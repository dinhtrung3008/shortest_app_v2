// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCommentPostResponseDTO _$ListCommentPostResponseDTOFromJson(
  Map<String, dynamic> json,
) => ListCommentPostResponseDTO(
  page: (json['page'] as num?)?.toInt(),
  perPage: (json['perPage'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  totalItems: (json['totalItems'] as num?)?.toInt(),
  commentsPost:
      (json['items'] as List<dynamic>?)
          ?.map((e) => CommentPostDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ListCommentPostResponseDTOToJson(
  ListCommentPostResponseDTO instance,
) => <String, dynamic>{
  if (instance.page case final value?) 'page': value,
  if (instance.perPage case final value?) 'perPage': value,
  if (instance.totalPages case final value?) 'totalPages': value,
  if (instance.totalItems case final value?) 'totalItems': value,
  if (instance.commentsPost case final value?) 'items': value,
};

CommentPostDTO _$CommentPostDTOFromJson(Map<String, dynamic> json) =>
    CommentPostDTO(
      commentPostId: json['id'] as String?,
      content: json['content'] as String?,
      owner: json['owner'] as String?,
      mediaUrls:
          (json['mediaUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
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
              : CommentPostExpandDTO.fromJson(
                json['expand'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$CommentPostDTOToJson(
  CommentPostDTO instance,
) => <String, dynamic>{
  if (instance.commentPostId case final value?) 'id': value,
  if (instance.content case final value?) 'content': value,
  if (instance.owner case final value?) 'owner': value,
  if (instance.mediaUrls case final value?) 'mediaUrls': value,
  if (instance.postOwner case final value?) 'postOwner': value,
  if (instance.created?.toIso8601String() case final value?) 'created': value,
  if (instance.updated?.toIso8601String() case final value?) 'updated': value,
  if (instance.collectionId case final value?) 'collectionId': value,
  if (instance.collectionName case final value?) 'collectionName': value,
  if (instance.expand case final value?) 'expand': value,
};

CommentPostExpandDTO _$CommentPostExpandDTOFromJson(
  Map<String, dynamic> json,
) => CommentPostExpandDTO(
  owner:
      json['owner'] == null
          ? null
          : UserShortestDTO.fromJson(json['owner'] as Map<String, dynamic>),
  postOwner:
      json['postOwner'] == null
          ? null
          : PostShortestDTO.fromJson(json['postOwner'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CommentPostExpandDTOToJson(
  CommentPostExpandDTO instance,
) => <String, dynamic>{
  if (instance.owner case final value?) 'owner': value,
  if (instance.postOwner case final value?) 'postOwner': value,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListLikeCommentResponseDTO _$ListLikeCommentResponseDTOFromJson(
  Map<String, dynamic> json,
) => ListLikeCommentResponseDTO(
  page: (json['page'] as num?)?.toInt(),
  perPage: (json['perPage'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  totalItems: (json['totalItems'] as num?)?.toInt(),
  likeComments:
      (json['items'] as List<dynamic>?)
          ?.map((e) => LikeCommentDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ListLikeCommentResponseDTOToJson(
  ListLikeCommentResponseDTO instance,
) => <String, dynamic>{
  if (instance.page case final value?) 'page': value,
  if (instance.perPage case final value?) 'perPage': value,
  if (instance.totalPages case final value?) 'totalPages': value,
  if (instance.totalItems case final value?) 'totalItems': value,
  if (instance.likeComments case final value?) 'items': value,
};

LikeCommentDTO _$LikeCommentDTOFromJson(Map<String, dynamic> json) =>
    LikeCommentDTO(
      likeCommentId: json['id'] as String?,
      commentOwner: json['commentOwner'] as String?,
      owner: json['owner'] as String?,
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
              : LikeCommentExpandDTO.fromJson(
                json['expand'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$LikeCommentDTOToJson(
  LikeCommentDTO instance,
) => <String, dynamic>{
  if (instance.likeCommentId case final value?) 'id': value,
  if (instance.commentOwner case final value?) 'commentOwner': value,
  if (instance.owner case final value?) 'owner': value,
  if (instance.created?.toIso8601String() case final value?) 'created': value,
  if (instance.updated?.toIso8601String() case final value?) 'updated': value,
  if (instance.collectionId case final value?) 'collectionId': value,
  if (instance.collectionName case final value?) 'collectionName': value,
  if (instance.expand case final value?) 'expand': value,
};

LikeCommentExpandDTO _$LikeCommentExpandDTOFromJson(
  Map<String, dynamic> json,
) => LikeCommentExpandDTO(
  owner:
      json['owner'] == null
          ? null
          : UserShortestDTO.fromJson(json['owner'] as Map<String, dynamic>),
  commentOwner:
      json['commentOwner'] == null
          ? null
          : CommentPostDTO.fromJson(
            json['commentOwner'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$LikeCommentExpandDTOToJson(
  LikeCommentExpandDTO instance,
) => <String, dynamic>{
  if (instance.owner case final value?) 'owner': value,
  if (instance.commentOwner case final value?) 'commentOwner': value,
};

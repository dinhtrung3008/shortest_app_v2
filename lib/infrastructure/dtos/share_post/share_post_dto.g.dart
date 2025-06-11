// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListSharePostResponseDTO _$ListSharePostResponseDTOFromJson(
  Map<String, dynamic> json,
) => ListSharePostResponseDTO(
  page: (json['page'] as num?)?.toInt(),
  perPage: (json['perPage'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  totalItems: (json['totalItems'] as num?)?.toInt(),
  sharePosts:
      (json['items'] as List<dynamic>?)
          ?.map((e) => SharePostDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ListSharePostResponseDTOToJson(
  ListSharePostResponseDTO instance,
) => <String, dynamic>{
  if (instance.page case final value?) 'page': value,
  if (instance.perPage case final value?) 'perPage': value,
  if (instance.totalPages case final value?) 'totalPages': value,
  if (instance.totalItems case final value?) 'totalItems': value,
  if (instance.sharePosts case final value?) 'items': value,
};

SharePostDTO _$SharePostDTOFromJson(Map<String, dynamic> json) => SharePostDTO(
  sharePostId: json['id'] as String?,
  postOwner: json['postOwner'] as String?,
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
          : SharePostExpandDTO.fromJson(json['expand'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SharePostDTOToJson(
  SharePostDTO instance,
) => <String, dynamic>{
  if (instance.sharePostId case final value?) 'id': value,
  if (instance.owner case final value?) 'owner': value,
  if (instance.postOwner case final value?) 'postOwner': value,
  if (instance.created?.toIso8601String() case final value?) 'created': value,
  if (instance.updated?.toIso8601String() case final value?) 'updated': value,
  if (instance.collectionId case final value?) 'collectionId': value,
  if (instance.collectionName case final value?) 'collectionName': value,
  if (instance.expand case final value?) 'expand': value,
};

SharePostExpandDTO _$SharePostExpandDTOFromJson(Map<String, dynamic> json) =>
    SharePostExpandDTO(
      owner:
          json['owner'] == null
              ? null
              : UserShortestDTO.fromJson(json['owner'] as Map<String, dynamic>),
      postOwner:
          json['postOwner'] == null
              ? null
              : PostShortestDTO.fromJson(
                json['postOwner'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$SharePostExpandDTOToJson(SharePostExpandDTO instance) =>
    <String, dynamic>{
      if (instance.owner case final value?) 'owner': value,
      if (instance.postOwner case final value?) 'postOwner': value,
    };

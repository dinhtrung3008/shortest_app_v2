import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/share_post/share_post.dart';
import '../post_shortest/post_shortest_dto.dart';
import '../user_shortest/user_shortest_dto.dart';

part 'share_post_dto.g.dart';

@JsonSerializable()
class ListSharePostResponseDTO {
  @JsonKey(name: 'page', includeIfNull: false)
  int? page;

  @JsonKey(name: 'perPage', includeIfNull: false)
  int? perPage;

  @JsonKey(name: 'totalPages', includeIfNull: false)
  int? totalPages;

  @JsonKey(name: 'totalItems', includeIfNull: false)
  int? totalItems;

  @JsonKey(name: 'items', includeIfNull: false)
  List<SharePostDTO>? sharePosts;

  ListSharePostResponseDTO({
    this.page,
    this.perPage,
    this.totalPages,
    this.totalItems,
    this.sharePosts,
  });

  ListSharePostResponseDTO copyWith({
    int? page,
    int? perPage,
    int? totalPages,
    int? totalItems,
    List<SharePostDTO>? sharePosts,
  }) {
    return ListSharePostResponseDTO(
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      totalPages: totalPages ?? this.totalPages,
      totalItems: totalItems ?? this.totalItems,
      sharePosts: sharePosts ?? this.sharePosts,
    );
  }

  factory ListSharePostResponseDTO.fromJson(Map<String, dynamic> json) => _$ListSharePostResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ListSharePostResponseDTOToJson(this);
}

@JsonSerializable()
class SharePostDTO {
  @JsonKey(name: 'id', includeIfNull: false)
  String? sharePostId;

  @JsonKey(name: 'owner', includeIfNull: false)
  String? owner;

  @JsonKey(name: 'postOwner', includeIfNull: false)
  String? postOwner;

  @JsonKey(name: 'created', includeIfNull: false)
  DateTime? created;

  @JsonKey(name: 'updated', includeIfNull: false)
  DateTime? updated;

  @JsonKey(name: 'collectionId', includeIfNull: false)
  String? collectionId;

  @JsonKey(name: 'collectionName', includeIfNull: false)
  String? collectionName;

  @JsonKey(name: 'expand', includeIfNull: false)
  SharePostExpandDTO? expand;

  SharePostDTO({
    this.sharePostId,
    this.postOwner,
    this.owner,
    this.created,
    this.updated,
    this.collectionId,
    this.collectionName,
    this.expand,
  });

  factory SharePostDTO.fromDomain(SharePost sharePost) {
    return SharePostDTO(
      sharePostId: sharePost.sharePostId,
      owner: sharePost.owner,
      postOwner: sharePost.postOwner,
      created: sharePost.created,
      updated: sharePost.updated,
      collectionId: sharePost.collectionId,
      collectionName: sharePost.collectionName,
      expand: sharePost.expand != null ? SharePostExpandDTO.fromDomain(sharePost.expand!) : null,
    );
  }

  SharePost toDomain() {
    return SharePost(
      sharePostId: sharePostId ?? '',
      owner: owner ?? '',
      postOwner: postOwner ?? '',
      created: created ?? DateTime.now(),
      updated: updated ?? DateTime.now(),
      collectionId: collectionId,
      collectionName: collectionName,
      expand: expand?.toDomain(),
    );
  }

  factory SharePostDTO.fromJson(Map<String, dynamic> json) => _$SharePostDTOFromJson(json);

  Map<String, dynamic> toJson() => _$SharePostDTOToJson(this);
}

@JsonSerializable()
class SharePostExpandDTO {
  @JsonKey(name: 'owner', includeIfNull: false)
  UserShortestDTO? owner;

  @JsonKey(name: 'postOwner', includeIfNull: false)
  PostShortestDTO? postOwner;

  SharePostExpandDTO({
    this.owner,
    this.postOwner,
  });

  SharePostExpandDTO copyWith({
    UserShortestDTO? owner,
    PostShortestDTO? postOwner,
  }) {
    return SharePostExpandDTO(
      owner: owner ?? this.owner,
      postOwner: postOwner ?? this.postOwner,
    );
  }

  SharePostExpand toDomain() {
    return SharePostExpand(
      owner: owner?.toDomain(),
      postOwner: postOwner?.toDomain(),
    );
  }

  factory SharePostExpandDTO.fromDomain(SharePostExpand expand) {
    return SharePostExpandDTO(
      owner: expand.owner != null ? UserShortestDTO.fromDomain(expand.owner!) : null,
      postOwner: expand.postOwner != null ? PostShortestDTO.fromDomain(expand.postOwner!) : null,
    );
  }

  factory SharePostExpandDTO.fromJson(Map<String, dynamic> json) => _$SharePostExpandDTOFromJson(json);

  Map<String, dynamic> toJson() => _$SharePostExpandDTOToJson(this);
}

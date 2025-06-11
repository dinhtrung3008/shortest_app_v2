import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/like_post/like_post.dart';
import '../post_shortest/post_shortest_dto.dart';
import '../user_shortest/user_shortest_dto.dart';

part 'like_post_dto.g.dart';

@JsonSerializable()
class ListLikePostResponseDTO {
  @JsonKey(name: 'page', includeIfNull: false)
  int? page;

  @JsonKey(name: 'perPage', includeIfNull: false)
  int? perPage;

  @JsonKey(name: 'totalPages', includeIfNull: false)
  int? totalPages;

  @JsonKey(name: 'totalItems', includeIfNull: false)
  int? totalItems;

  @JsonKey(name: 'items', includeIfNull: false)
  List<LikePostDTO>? likePosts;

  ListLikePostResponseDTO({
    this.page,
    this.perPage,
    this.totalPages,
    this.totalItems,
    this.likePosts,
  });

  ListLikePostResponseDTO copyWith({
    int? page,
    int? perPage,
    int? totalPages,
    int? totalItems,
    List<LikePostDTO>? likePosts,
  }) {
    return ListLikePostResponseDTO(
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      totalPages: totalPages ?? this.totalPages,
      totalItems: totalItems ?? this.totalItems,
      likePosts: likePosts ?? this.likePosts,
    );
  }

  factory ListLikePostResponseDTO.fromJson(Map<String, dynamic> json) => _$ListLikePostResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ListLikePostResponseDTOToJson(this);
}

@JsonSerializable()
class LikePostDTO {
  @JsonKey(name: 'id', includeIfNull: false)
  String? likePostId;

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
  LikePostExpandDTO? expand;

  LikePostDTO({
    this.likePostId,
    this.postOwner,
    this.owner,
    this.created,
    this.updated,
    this.collectionId,
    this.collectionName,
    this.expand,
  });

  factory LikePostDTO.fromDomain(LikePost likePost) {
    return LikePostDTO(
      likePostId: likePost.likePostId,
      owner: likePost.owner,
      postOwner: likePost.postOwner,
      created: likePost.created,
      updated: likePost.updated,
      collectionId: likePost.collectionId,
      collectionName: likePost.collectionName,
      expand: likePost.expand != null ? LikePostExpandDTO.fromDomain(likePost.expand!) : null,
    );
  }

  LikePost toDomain() {
    return LikePost(
      likePostId: likePostId ?? '',
      owner: owner ?? '',
      postOwner: postOwner ?? '',
      created: created ?? DateTime.now(),
      updated: updated ?? DateTime.now(),
      collectionId: collectionId ?? '',
      collectionName: collectionName ?? '',
      expand: expand?.toDomain(),
    );
  }

  factory LikePostDTO.fromJson(Map<String, dynamic> json) => _$LikePostDTOFromJson(json);

  Map<String, dynamic> toJson() => _$LikePostDTOToJson(this);
}

@JsonSerializable()
class LikePostExpandDTO {
  @JsonKey(name: 'owner', includeIfNull: false)
  UserShortestDTO? owner;

  @JsonKey(name: 'postOwner', includeIfNull: false)
  PostShortestDTO? postOwner;

  LikePostExpandDTO({
    this.owner,
    this.postOwner,
  });

  LikePostExpandDTO copyWith({
    UserShortestDTO? owner,
    PostShortestDTO? postOwner,
  }) {
    return LikePostExpandDTO(
      owner: owner ?? this.owner,
      postOwner: postOwner ?? this.postOwner,
    );
  }

  LikePostExpand toDomain() {
    return LikePostExpand(
      owner: owner?.toDomain(),
      postOwner: postOwner?.toDomain(),
    );
  }

  factory LikePostExpandDTO.fromDomain(LikePostExpand expand) {
    return LikePostExpandDTO(
      owner: expand.owner != null ? UserShortestDTO.fromDomain(expand.owner!) : null,
      postOwner: expand.postOwner != null ? PostShortestDTO.fromDomain(expand.postOwner!) : null,
    );
  }

  factory LikePostExpandDTO.fromJson(Map<String, dynamic> json) => _$LikePostExpandDTOFromJson(json);

  Map<String, dynamic> toJson() => _$LikePostExpandDTOToJson(this);
}

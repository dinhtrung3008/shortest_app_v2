import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/post_shortest/post_shortest.dart';
import '../../../../presentation/core/enums/type_post_enum.dart';
import '../../../../presentation/core/enums/visibility_enum.dart';
import '../user_shortest/user_shortest_dto.dart';

part 'post_shortest_dto.g.dart';

@JsonSerializable()
class ListPostShortestResponseDTO {
  @JsonKey(name: 'page', includeIfNull: false)
  int? page;

  @JsonKey(name: 'perPage', includeIfNull: false)
  int? perPage;

  @JsonKey(name: 'totalPages', includeIfNull: false)
  int? totalPages;

  @JsonKey(name: 'totalItems', includeIfNull: false)
  int? totalItems;

  @JsonKey(name: 'items', includeIfNull: false)
  List<PostShortestDTO>? postsShortest;

  ListPostShortestResponseDTO({
    this.page,
    this.perPage,
    this.totalPages,
    this.totalItems,
    this.postsShortest,
  });

  // Phương thức copyWith
  ListPostShortestResponseDTO copyWith({
    int? page,
    int? perPage,
    int? totalPages,
    int? totalItems,
    List<PostShortestDTO>? posts,
  }) {
    return ListPostShortestResponseDTO(
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      totalPages: totalPages ?? this.totalPages,
      totalItems: totalItems ?? this.totalItems,
      postsShortest: posts ?? this.postsShortest,
    );
  }

  factory ListPostShortestResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ListPostShortestResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ListPostShortestResponseDTOToJson(this);
}

@JsonSerializable()
class PostShortestDTO {
  @JsonKey(name: 'id', includeIfNull: false)
  String? postId;

  @JsonKey(name: 'mediaUrls', includeIfNull: false)
  List<String>? mediaUrls;

  @JsonKey(name: 'content', includeIfNull: false)
  String? content;

  @JsonKey(name: 'visibility', includeIfNull: false)
  String? visibility;

  @JsonKey(name: 'type', includeIfNull: false)
  String? type;

  @JsonKey(name: 'owner', includeIfNull: false)
  String? owner;

  @JsonKey(name: 'viewsCount', includeIfNull: false)
  int? viewsCount;

  @JsonKey(name: 'likesCount', includeIfNull: false)
  int? likesCount;

  @JsonKey(name: 'commentsCount', includeIfNull: false)
  int? commentsCount;

  @JsonKey(name: 'sharesCount', includeIfNull: false)
  int? sharesCount;

  @JsonKey(name: 'likes', includeIfNull: false)
  List<String>? likes;

  @JsonKey(name: 'comments', includeIfNull: false)
  List<String>? comments;

  @JsonKey(name: 'shares', includeIfNull: false)
  List<String>? shares;

  @JsonKey(name: 'created', includeIfNull: false)
  DateTime? created;

  @JsonKey(name: 'updated', includeIfNull: false)
  DateTime? updated;

  @JsonKey(name: 'collectionId', includeIfNull: false)
  String? collectionId;

  @JsonKey(name: 'collectionName', includeIfNull: false)
  String? collectionName;

  @JsonKey(name: 'expand', includeIfNull: false)
  PostShortestOwnerExpandDTO? ownerExpand;

  PostShortestDTO({
    this.postId,
    this.mediaUrls,
    this.content,
    this.visibility,
    this.type,
    this.owner,
    this.viewsCount,
    this.likesCount,
    this.commentsCount,
    this.sharesCount,
    this.likes,
    this.comments,
    this.shares,
    this.created,
    this.updated,
    this.collectionId,
    this.collectionName,
    this.ownerExpand,
  });

  PostShortestDTO copyWith({
    String? postId,
    String? content,
    List<String>? mediaUrls,
    DateTime? created,
    String? collectionId,
    String? collectionName,
    DateTime? updated,
    int? viewsCount,
    int? likesCount,
    int? commentsCount,
    int? sharesCount,
    List<String>? likes,
    List<String>? comments,
    List<String>? shares,
    String? visibility,
    String? type,
    String? owner,
    PostShortestOwnerExpandDTO? ownerExpand,
  }) {
    return PostShortestDTO(
      postId: postId ?? this.postId,
      content: content ?? this.content,
      mediaUrls: mediaUrls ?? this.mediaUrls,
      created: created ?? this.created,
      collectionId: collectionId ?? this.collectionId,
      collectionName: collectionName ?? this.collectionName,
      updated: updated ?? this.updated,
      viewsCount: viewsCount ?? this.viewsCount,
      likesCount: likesCount ?? this.likesCount,
      commentsCount: commentsCount ?? this.commentsCount,
      sharesCount: sharesCount ?? this.sharesCount,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
      shares: shares ?? this.shares,
      visibility: visibility ?? this.visibility,
      type: type ?? this.type,
      owner: owner ?? this.owner,
      ownerExpand: ownerExpand ?? this.ownerExpand,
    );
  }

  PostShortest toDomain() {
    return PostShortest(
      postId: postId ?? '',
      content: content ?? '',
      mediaUrls: mediaUrls ?? [],
      created: created ?? DateTime.now(),
      collectionId: collectionId ?? '',
      collectionName: collectionName ?? '',
      updated: updated ?? DateTime.now(),
      viewsCount: viewsCount ?? 0,
      likesCount: likesCount ?? 0,
      commentsCount: commentsCount ?? 0,
      sharesCount: sharesCount ?? 0,
      likes: likes ?? [],
      comments: comments ?? [],
      shares: shares ?? [],
      owner: owner ?? '',
      ownerExpand: ownerExpand?.toDomain(),
      visibility: VisibilityEnum.values.firstWhere(
        (e) => e.name == visibility,
        orElse: () => VisibilityEnum.public,
      ),
      type: TypePostEnum.values.firstWhere(
        (e) => e.name == type,
        orElse: () => TypePostEnum.self,
      ),
    );
  }

  factory PostShortestDTO.fromDomain(PostShortest post) {
    return PostShortestDTO(
      postId: post.postId,
      content: post.content,
      mediaUrls: post.mediaUrls,
      created: post.created,
      updated: post.updated,
      collectionId: post.collectionId,
      collectionName: post.collectionName,
      viewsCount: post.viewsCount,
      likesCount: post.likesCount,
      commentsCount: post.commentsCount,
      sharesCount: post.sharesCount,
      likes: post.likes,
      comments: post.comments,
      shares: post.shares,
      owner: post.owner,
      ownerExpand: post.ownerExpand != null ? PostShortestOwnerExpandDTO.fromDomain(post.ownerExpand!) : null,
      visibility: post.visibility.name,
      type: post.type.name,
    );
  }

  factory PostShortestDTO.fromJson(Map<String, dynamic> json) => _$PostShortestDTOFromJson(json);

  Map<String, dynamic> toJson() => _$PostShortestDTOToJson(this);
}

@JsonSerializable()
class PostShortestOwnerExpandDTO {
  @JsonKey(name: 'owner', includeIfNull: false)
  UserShortestDTO? owner;

  PostShortestOwnerExpandDTO({this.owner});

  PostShortestOwnerExpandDTO copyWith({
    UserShortestDTO? owner,
  }) {
    return PostShortestOwnerExpandDTO(
      owner: owner ?? this.owner,
    );
  }

  PostShortestOwnerExpand toDomain() {
    return PostShortestOwnerExpand(owner: owner?.toDomain());
  }

  factory PostShortestOwnerExpandDTO.fromDomain(PostShortestOwnerExpand expand) {
    return PostShortestOwnerExpandDTO(
      owner: expand.owner != null ? UserShortestDTO.fromDomain(expand.owner!) : null,
    );
  }

  factory PostShortestOwnerExpandDTO.fromJson(Map<String, dynamic> json) => _$PostShortestOwnerExpandDTOFromJson(json);

  Map<String, dynamic> toJson() => _$PostShortestOwnerExpandDTOToJson(this);
}

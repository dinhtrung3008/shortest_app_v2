import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/comment_post/comment_post.dart';
import '../post_shortest/post_shortest_dto.dart';
import '../user_shortest/user_shortest_dto.dart';

part 'comment_post_dto.g.dart';

@JsonSerializable()
class ListCommentPostResponseDTO {
  @JsonKey(name: 'page', includeIfNull: false)
  int? page;

  @JsonKey(name: 'perPage', includeIfNull: false)
  int? perPage;

  @JsonKey(name: 'totalPages', includeIfNull: false)
  int? totalPages;

  @JsonKey(name: 'totalItems', includeIfNull: false)
  int? totalItems;

  @JsonKey(name: 'items', includeIfNull: false)
  List<CommentPostDTO>? commentsPost;

  ListCommentPostResponseDTO({
    this.page,
    this.perPage,
    this.totalPages,
    this.totalItems,
    this.commentsPost,
  });

  ListCommentPostResponseDTO copyWith({
    int? page,
    int? perPage,
    int? totalPages,
    int? totalItems,
    List<CommentPostDTO>? commentsPost,
  }) {
    return ListCommentPostResponseDTO(
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      totalPages: totalPages ?? this.totalPages,
      totalItems: totalItems ?? this.totalItems,
      commentsPost: commentsPost ?? this.commentsPost,
    );
  }

  factory ListCommentPostResponseDTO.fromJson(Map<String, dynamic> json) => _$ListCommentPostResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ListCommentPostResponseDTOToJson(this);
}

@JsonSerializable()
class CommentPostDTO {
  @JsonKey(name: 'id', includeIfNull: false)
  String? commentPostId;

  @JsonKey(name: 'content', includeIfNull: false)
  String? content;

  @JsonKey(name: 'owner', includeIfNull: false)
  String? owner;

  @JsonKey(name: 'mediaUrls', includeIfNull: false)
  List<String>? mediaUrls;

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
  CommentPostExpandDTO? expand;

  CommentPostDTO({
    this.commentPostId,
    this.content,
    this.owner,
    this.mediaUrls,
    this.postOwner,
    this.created,
    this.updated,
    this.collectionId,
    this.collectionName,
    this.expand,
  });

  factory CommentPostDTO.fromDomain(CommentPost comment) {
    return CommentPostDTO(
      commentPostId: comment.commentPostId,
      content: comment.content,
      owner: comment.owner,
      mediaUrls: comment.mediaUrls,
      postOwner: comment.postOwner,
      created: comment.created,
      updated: comment.updated,
      collectionId: comment.collectionId,
      collectionName: comment.collectionName,
      expand: comment.expand != null
          ? CommentPostExpandDTO.fromDomain(
              comment.expand!,
            )
          : null,
    );
  }

  CommentPost toDomain() {
    return CommentPost(
      commentPostId: commentPostId ?? '',
      content: content ?? '',
      owner: owner ?? '',
      mediaUrls: mediaUrls ?? [],
      postOwner: postOwner ?? '',
      created: created ?? DateTime.now(),
      updated: updated ?? DateTime.now(),
      collectionId: collectionId ?? '',
      collectionName: collectionName ?? '',
      expand: expand?.toDomain(),
    );
  }

  factory CommentPostDTO.fromJson(Map<String, dynamic> json) => _$CommentPostDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CommentPostDTOToJson(this);
}

@JsonSerializable()
class CommentPostExpandDTO {
  @JsonKey(name: 'owner', includeIfNull: false)
  UserShortestDTO? owner;

  @JsonKey(name: 'postOwner', includeIfNull: false)
  PostShortestDTO? postOwner;

  CommentPostExpandDTO({this.owner, this.postOwner});

  CommentPostExpandDTO copyWith({
    UserShortestDTO? owner,
    PostShortestDTO? postOwner,
  }) {
    return CommentPostExpandDTO(
      owner: owner ?? this.owner,
      postOwner: postOwner ?? this.postOwner,
    );
  }

  CommentPostExpand toDomain() {
    return CommentPostExpand(owner: owner?.toDomain());
  }

  factory CommentPostExpandDTO.fromDomain(CommentPostExpand expand) {
    return CommentPostExpandDTO(
      owner: expand.owner != null ? UserShortestDTO.fromDomain(expand.owner!) : null,
      postOwner: expand.postOwner != null ? PostShortestDTO.fromDomain(expand.postOwner!) : null,
    );
  }

  factory CommentPostExpandDTO.fromJson(Map<String, dynamic> json) => _$CommentPostExpandDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CommentPostExpandDTOToJson(this);
}

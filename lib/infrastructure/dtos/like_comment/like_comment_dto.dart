import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/like_comment/like_comment.dart';
import '../comment_post/comment_post_dto.dart';
import '../user_shortest/user_shortest_dto.dart';

part 'like_comment_dto.g.dart';

@JsonSerializable()
class ListLikeCommentResponseDTO {
  @JsonKey(name: 'page', includeIfNull: false)
  int? page;

  @JsonKey(name: 'perPage', includeIfNull: false)
  int? perPage;

  @JsonKey(name: 'totalPages', includeIfNull: false)
  int? totalPages;

  @JsonKey(name: 'totalItems', includeIfNull: false)
  int? totalItems;

  @JsonKey(name: 'items', includeIfNull: false)
  List<LikeCommentDTO>? likeComments;

  ListLikeCommentResponseDTO({this.page, this.perPage, this.totalPages, this.totalItems, this.likeComments});

  ListLikeCommentResponseDTO copyWith({
    int? page,
    int? perPage,
    int? totalPages,
    int? totalItems,
    List<LikeCommentDTO>? likeComments,
  }) {
    return ListLikeCommentResponseDTO(
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      totalPages: totalPages ?? this.totalPages,
      totalItems: totalItems ?? this.totalItems,
      likeComments: likeComments ?? this.likeComments,
    );
  }

  factory ListLikeCommentResponseDTO.fromJson(Map<String, dynamic> json) => _$ListLikeCommentResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ListLikeCommentResponseDTOToJson(this);
}

@JsonSerializable()
class LikeCommentDTO {
  @JsonKey(name: 'id', includeIfNull: false)
  String? likeCommentId;

  @JsonKey(name: 'commentOwner', includeIfNull: false)
  String? commentOwner;

  @JsonKey(name: 'owner', includeIfNull: false)
  String? owner;

  @JsonKey(name: 'created', includeIfNull: false)
  DateTime? created;

  @JsonKey(name: 'updated', includeIfNull: false)
  DateTime? updated;

  @JsonKey(name: 'collectionId', includeIfNull: false)
  String? collectionId;

  @JsonKey(name: 'collectionName', includeIfNull: false)
  String? collectionName;

  @JsonKey(name: 'expand', includeIfNull: false)
  LikeCommentExpandDTO? expand;

  LikeCommentDTO({
    this.likeCommentId,
    this.commentOwner,
    this.owner,
    this.created,
    this.updated,
    this.collectionId,
    this.collectionName,
    this.expand,
  });

  factory LikeCommentDTO.fromDomain(LikeComment likeComment) {
    return LikeCommentDTO(
      likeCommentId: likeComment.likeCommentId,
      commentOwner: likeComment.commentOwner,
      owner: likeComment.owner,
      created: likeComment.created,
      updated: likeComment.updated,
      collectionId: likeComment.collectionId,
      collectionName: likeComment.collectionName,
      expand: likeComment.expand != null ? LikeCommentExpandDTO.fromDomain(likeComment.expand!) : null,
    );
  }

  LikeComment toDomain() {
    return LikeComment(
      likeCommentId: likeCommentId ?? '',
      commentOwner: commentOwner ?? '',
      owner: owner ?? '',
      created: created ?? DateTime.now(),
      updated: updated ?? DateTime.now(),
      collectionId: collectionId ?? '',
      collectionName: collectionName ?? '',
      expand: expand?.toDomain(),
    );
  }

  factory LikeCommentDTO.fromJson(Map<String, dynamic> json) => _$LikeCommentDTOFromJson(json);

  Map<String, dynamic> toJson() => _$LikeCommentDTOToJson(this);
}

@JsonSerializable()
class LikeCommentExpandDTO {
  @JsonKey(name: 'owner', includeIfNull: false)
  UserShortestDTO? owner;

  @JsonKey(name: 'commentOwner', includeIfNull: false)
  CommentPostDTO? commentOwner;

  LikeCommentExpandDTO({this.owner, this.commentOwner});

  LikeCommentExpandDTO copyWith({UserShortestDTO? owner, CommentPostDTO? commentOwner}) {
    return LikeCommentExpandDTO(owner: owner ?? this.owner, commentOwner: commentOwner ?? this.commentOwner);
  }

  LikeCommentExpand toDomain() {
    return LikeCommentExpand(owner: owner?.toDomain(), commentOwner: commentOwner?.toDomain());
  }

  factory LikeCommentExpandDTO.fromDomain(LikeCommentExpand expand) {
    return LikeCommentExpandDTO(
      owner: expand.owner != null ? UserShortestDTO.fromDomain(expand.owner!) : null,
      commentOwner: expand.commentOwner != null ? CommentPostDTO.fromDomain(expand.commentOwner!) : null,
    );
  }

  factory LikeCommentExpandDTO.fromJson(Map<String, dynamic> json) => _$LikeCommentExpandDTOFromJson(json);

  Map<String, dynamic> toJson() => _$LikeCommentExpandDTOToJson(this);
}

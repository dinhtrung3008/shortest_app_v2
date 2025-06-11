import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/user_shortest/user_shortest.dart';

part 'user_shortest_dto.g.dart';

@JsonSerializable()
class ListUserShortestResponseDTO {
  @JsonKey(name: 'page', includeIfNull: false)
  int? page;

  @JsonKey(name: 'perPage', includeIfNull: false)
  int? perPage;

  @JsonKey(name: 'totalPages', includeIfNull: false)
  int? totalPages;

  @JsonKey(name: 'totalItems', includeIfNull: false)
  int? totalItems;

  @JsonKey(name: 'items', includeIfNull: false)
  List<UserShortestDTO>? usersShortest;

  ListUserShortestResponseDTO({
    this.page,
    this.perPage,
    this.totalPages,
    this.totalItems,
    this.usersShortest,
  });

  // Phương thức copyWith
  ListUserShortestResponseDTO copyWith({
    int? page,
    int? perPage,
    int? totalPages,
    int? totalItems,
    List<UserShortestDTO>? usersShortest,
  }) {
    return ListUserShortestResponseDTO(
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      totalPages: totalPages ?? this.totalPages,
      totalItems: totalItems ?? this.totalItems,
      usersShortest: usersShortest ?? this.usersShortest,
    );
  }


  factory ListUserShortestResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ListUserShortestResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ListUserShortestResponseDTOToJson(this);
}

@JsonSerializable()
class UserShortestDTO {
  @JsonKey(name: 'id', includeIfNull: false)
  String? id;

  @JsonKey(name: 'identity', includeIfNull: false)
  String? identity;

  @JsonKey(name: 'username', includeIfNull: false)
  String? username;

  @JsonKey(name: 'email', includeIfNull: false)
  String? email;

  @JsonKey(name: 'bio', includeIfNull: false)
  String? bio;

  @JsonKey(name: 'collectionId', includeIfNull: false)
  String? collectionId;

  @JsonKey(name: 'collectionName', includeIfNull: false)
  String? collectionName;

  @JsonKey(name: 'verified', includeIfNull: false)
  bool? verified;

  @JsonKey(name: 'popular', includeIfNull: false)
  bool? popular;

  @JsonKey(name: 'emailVisibility', includeIfNull: false)
  bool? emailVisibility;

  @JsonKey(name: 'password', includeIfNull: false)
  String? password;

  @JsonKey(name: 'passwordConfirm', includeIfNull: false)
  String? passwordConfirm;

  @JsonKey(name: 'avatar', includeIfNull: false)
  String? avatar;

  @JsonKey(name: 'banner', includeIfNull: false)
  String? banner;

  @JsonKey(name: 'birthDate', includeIfNull: false)
  DateTime? birthDate;

  @JsonKey(name: 'phoneNumber', includeIfNull: false)
  String? phoneNumber;

  @JsonKey(name: 'gender', includeIfNull: false)
  String? gender;

  @JsonKey(name: 'address', includeIfNull: false)
  String? address;

  @JsonKey(name: 'friendsRequest', includeIfNull: false)
  List<String>? friendsRequest;

  @JsonKey(name: 'followings', includeIfNull: false)
  List<String>? followings;

  @JsonKey(name: 'followers', includeIfNull: false)
  List<String>? followers;

  @JsonKey(name: 'created', includeIfNull: false)
  DateTime? created;

  @JsonKey(name: 'updated', includeIfNull: false)
  DateTime? updated;

  @JsonKey(name: 'interests', includeIfNull: false)
  List<String>? interests;

  @JsonKey(name: 'likedPosts', includeIfNull: false)
  List<String>? likedPosts;

  @JsonKey(name: 'viewedPosts', includeIfNull: false)
  List<String>? viewedPosts;

  @JsonKey(name: 'savedPosts', includeIfNull: false)
  List<String>? savedPosts;

  UserShortestDTO({
    this.id,
    this.identity,
    this.username,
    this.email,
    this.bio,
    this.collectionId,
    this.collectionName,
    this.verified,
    this.popular,
    this.emailVisibility,
    this.password,
    this.passwordConfirm,
    this.avatar,
    this.banner,
    this.birthDate,
    this.phoneNumber,
    this.gender,
    this.address,
    this.friendsRequest,
    this.followings,
    this.followers,
    this.created,
    this.updated,
    this.interests,
    this.likedPosts,
    this.viewedPosts,
    this.savedPosts,
  });

  UserShortestDTO copyWith({
    String? id,
    String? identity,
    String? username,
    String? email,
    String? bio,
    String? collectionId,
    String? collectionName,
    bool? verified,
    bool? popular,
    bool? emailVisibility,
    String? password,
    String? passwordConfirm,
    String? avatar,
    String? banner,
    DateTime? birthDate,
    String? phoneNumber,
    String? gender,
    String? address,
    List<String>? friendsRequest,
    List<String>? followings,
    List<String>? followers,
    DateTime? created,
    DateTime? updated,
    List<String>? interests,
    List<String>? likedPosts,
    List<String>? viewedPosts,
    List<String>? savedPosts,
  }) {
    return UserShortestDTO(
      id: id ?? this.id,
      identity: identity ?? this.identity,
      username: username ?? this.username,
      email: email ?? this.email,
      bio: bio ?? this.bio,
      collectionId: collectionId ?? this.collectionId,
      collectionName: collectionName ?? this.collectionName,
      verified: verified ?? this.verified,
      popular: popular ?? this.popular,
      emailVisibility: emailVisibility ?? this.emailVisibility,
      password: password ?? this.password,
      passwordConfirm: passwordConfirm ?? this.passwordConfirm,
      avatar: avatar ?? this.avatar,
      banner: banner ?? this.banner,
      birthDate: birthDate ?? this.birthDate,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      gender: gender ?? this.gender,
      address: address ?? this.address,
      friendsRequest: friendsRequest ?? this.friendsRequest,
      followings: followings ?? this.followings,
      followers: followers ?? this.followers,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      interests: interests ?? this.interests,
      likedPosts: likedPosts ?? this.likedPosts,
      viewedPosts: viewedPosts ?? this.viewedPosts,
      savedPosts: savedPosts ?? this.savedPosts,
    );
  }

  UserShortest toDomain() {
    return UserShortest(
      id: id ?? '',
      username: username ?? '',
      email: email ?? '',
      bio: bio ?? '',
      verified: verified ?? false,
      popular: popular ?? false,
      collectionId: collectionId ?? '',
      collectionName: collectionName ?? '',
      emailVisibility: emailVisibility ?? true,
      avatar: avatar,
      banner: banner,
      birthDate: birthDate ?? DateTime.now(),
      phoneNumber: phoneNumber,
      gender: gender,
      address: address,
      friendsRequest: friendsRequest ?? [],
      followings: followings ?? [],
      followers: followers ?? [],
      created: created ?? DateTime.now(),
      updated: updated ?? DateTime.now(),
      interests: interests ?? [],
      likedPosts: likedPosts ?? [],
      viewedPosts: viewedPosts ?? [],
      savedPosts: savedPosts ?? [],
    );
  }

  factory UserShortestDTO.fromDomain(UserShortest user) {
    return UserShortestDTO(
      id: user.id,
      username: user.username,
      email: user.email,
      bio: user.bio,
      verified: user.verified,
      popular: user.popular,
      collectionId: user.collectionId,
      collectionName: user.collectionName,
      emailVisibility: user.emailVisibility,
      avatar: user.avatar,
      banner: user.banner,
      birthDate: user.birthDate,
      phoneNumber: user.phoneNumber,
      gender: user.gender,
      address: user.address,
      friendsRequest: user.friendsRequest,
      followings: user.followings,
      followers: user.followers,
      created: user.created,
      updated: user.updated,
      interests: user.interests,
      likedPosts: user.likedPosts,
      viewedPosts: user.viewedPosts,
      savedPosts: user.savedPosts,
    );
  }

  factory UserShortestDTO.fromJson(Map<String, dynamic> json) => _$UserShortestDTOFromJson(json);

  Map<String, dynamic> toJson() => _$UserShortestDTOToJson(this);
}

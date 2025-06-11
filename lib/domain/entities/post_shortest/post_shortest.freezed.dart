// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_shortest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostShortest _$PostShortestFromJson(Map<String, dynamic> json) {
  return _PostShortest.fromJson(json);
}

/// @nodoc
mixin _$PostShortest {
  String get postId => throw _privateConstructorUsedError;
  List<String>? get mediaUrls => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  VisibilityEnum get visibility => throw _privateConstructorUsedError;
  TypePostEnum get type => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  int get viewsCount => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  int get commentsCount => throw _privateConstructorUsedError;
  int get sharesCount => throw _privateConstructorUsedError;
  List<String> get likes => throw _privateConstructorUsedError;
  List<String> get comments => throw _privateConstructorUsedError;
  List<String> get shares => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  String get collectionId => throw _privateConstructorUsedError;
  String get collectionName => throw _privateConstructorUsedError;
  PostShortestOwnerExpand? get ownerExpand =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostShortestCopyWith<PostShortest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostShortestCopyWith<$Res> {
  factory $PostShortestCopyWith(
          PostShortest value, $Res Function(PostShortest) then) =
      _$PostShortestCopyWithImpl<$Res, PostShortest>;
  @useResult
  $Res call(
      {String postId,
      List<String>? mediaUrls,
      String content,
      VisibilityEnum visibility,
      TypePostEnum type,
      String owner,
      int viewsCount,
      int likesCount,
      int commentsCount,
      int sharesCount,
      List<String> likes,
      List<String> comments,
      List<String> shares,
      DateTime created,
      DateTime updated,
      String collectionId,
      String collectionName,
      PostShortestOwnerExpand? ownerExpand});

  $PostShortestOwnerExpandCopyWith<$Res>? get ownerExpand;
}

/// @nodoc
class _$PostShortestCopyWithImpl<$Res, $Val extends PostShortest>
    implements $PostShortestCopyWith<$Res> {
  _$PostShortestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? mediaUrls = freezed,
    Object? content = null,
    Object? visibility = null,
    Object? type = null,
    Object? owner = null,
    Object? viewsCount = null,
    Object? likesCount = null,
    Object? commentsCount = null,
    Object? sharesCount = null,
    Object? likes = null,
    Object? comments = null,
    Object? shares = null,
    Object? created = null,
    Object? updated = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? ownerExpand = freezed,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrls: freezed == mediaUrls
          ? _value.mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as VisibilityEnum,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypePostEnum,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      viewsCount: null == viewsCount
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      sharesCount: null == sharesCount
          ? _value.sharesCount
          : sharesCount // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shares: null == shares
          ? _value.shares
          : shares // ignore: cast_nullable_to_non_nullable
              as List<String>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerExpand: freezed == ownerExpand
          ? _value.ownerExpand
          : ownerExpand // ignore: cast_nullable_to_non_nullable
              as PostShortestOwnerExpand?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostShortestOwnerExpandCopyWith<$Res>? get ownerExpand {
    if (_value.ownerExpand == null) {
      return null;
    }

    return $PostShortestOwnerExpandCopyWith<$Res>(_value.ownerExpand!, (value) {
      return _then(_value.copyWith(ownerExpand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostShortestImplCopyWith<$Res>
    implements $PostShortestCopyWith<$Res> {
  factory _$$PostShortestImplCopyWith(
          _$PostShortestImpl value, $Res Function(_$PostShortestImpl) then) =
      __$$PostShortestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String postId,
      List<String>? mediaUrls,
      String content,
      VisibilityEnum visibility,
      TypePostEnum type,
      String owner,
      int viewsCount,
      int likesCount,
      int commentsCount,
      int sharesCount,
      List<String> likes,
      List<String> comments,
      List<String> shares,
      DateTime created,
      DateTime updated,
      String collectionId,
      String collectionName,
      PostShortestOwnerExpand? ownerExpand});

  @override
  $PostShortestOwnerExpandCopyWith<$Res>? get ownerExpand;
}

/// @nodoc
class __$$PostShortestImplCopyWithImpl<$Res>
    extends _$PostShortestCopyWithImpl<$Res, _$PostShortestImpl>
    implements _$$PostShortestImplCopyWith<$Res> {
  __$$PostShortestImplCopyWithImpl(
      _$PostShortestImpl _value, $Res Function(_$PostShortestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? mediaUrls = freezed,
    Object? content = null,
    Object? visibility = null,
    Object? type = null,
    Object? owner = null,
    Object? viewsCount = null,
    Object? likesCount = null,
    Object? commentsCount = null,
    Object? sharesCount = null,
    Object? likes = null,
    Object? comments = null,
    Object? shares = null,
    Object? created = null,
    Object? updated = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? ownerExpand = freezed,
  }) {
    return _then(_$PostShortestImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrls: freezed == mediaUrls
          ? _value._mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as VisibilityEnum,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypePostEnum,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      viewsCount: null == viewsCount
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      sharesCount: null == sharesCount
          ? _value.sharesCount
          : sharesCount // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shares: null == shares
          ? _value._shares
          : shares // ignore: cast_nullable_to_non_nullable
              as List<String>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerExpand: freezed == ownerExpand
          ? _value.ownerExpand
          : ownerExpand // ignore: cast_nullable_to_non_nullable
              as PostShortestOwnerExpand?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostShortestImpl extends _PostShortest {
  const _$PostShortestImpl(
      {required this.postId,
      final List<String>? mediaUrls,
      required this.content,
      required this.visibility,
      required this.type,
      required this.owner,
      required this.viewsCount,
      required this.likesCount,
      required this.commentsCount,
      required this.sharesCount,
      required final List<String> likes,
      required final List<String> comments,
      required final List<String> shares,
      required this.created,
      required this.updated,
      required this.collectionId,
      required this.collectionName,
      this.ownerExpand})
      : _mediaUrls = mediaUrls,
        _likes = likes,
        _comments = comments,
        _shares = shares,
        super._();

  factory _$PostShortestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostShortestImplFromJson(json);

  @override
  final String postId;
  final List<String>? _mediaUrls;
  @override
  List<String>? get mediaUrls {
    final value = _mediaUrls;
    if (value == null) return null;
    if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String content;
  @override
  final VisibilityEnum visibility;
  @override
  final TypePostEnum type;
  @override
  final String owner;
  @override
  final int viewsCount;
  @override
  final int likesCount;
  @override
  final int commentsCount;
  @override
  final int sharesCount;
  final List<String> _likes;
  @override
  List<String> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  final List<String> _comments;
  @override
  List<String> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<String> _shares;
  @override
  List<String> get shares {
    if (_shares is EqualUnmodifiableListView) return _shares;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shares);
  }

  @override
  final DateTime created;
  @override
  final DateTime updated;
  @override
  final String collectionId;
  @override
  final String collectionName;
  @override
  final PostShortestOwnerExpand? ownerExpand;

  @override
  String toString() {
    return 'PostShortest(postId: $postId, mediaUrls: $mediaUrls, content: $content, visibility: $visibility, type: $type, owner: $owner, viewsCount: $viewsCount, likesCount: $likesCount, commentsCount: $commentsCount, sharesCount: $sharesCount, likes: $likes, comments: $comments, shares: $shares, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, ownerExpand: $ownerExpand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostShortestImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            const DeepCollectionEquality()
                .equals(other._mediaUrls, _mediaUrls) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.viewsCount, viewsCount) ||
                other.viewsCount == viewsCount) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            (identical(other.sharesCount, sharesCount) ||
                other.sharesCount == sharesCount) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._shares, _shares) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.ownerExpand, ownerExpand) ||
                other.ownerExpand == ownerExpand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postId,
      const DeepCollectionEquality().hash(_mediaUrls),
      content,
      visibility,
      type,
      owner,
      viewsCount,
      likesCount,
      commentsCount,
      sharesCount,
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_shares),
      created,
      updated,
      collectionId,
      collectionName,
      ownerExpand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostShortestImplCopyWith<_$PostShortestImpl> get copyWith =>
      __$$PostShortestImplCopyWithImpl<_$PostShortestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostShortestImplToJson(
      this,
    );
  }
}

abstract class _PostShortest extends PostShortest {
  const factory _PostShortest(
      {required final String postId,
      final List<String>? mediaUrls,
      required final String content,
      required final VisibilityEnum visibility,
      required final TypePostEnum type,
      required final String owner,
      required final int viewsCount,
      required final int likesCount,
      required final int commentsCount,
      required final int sharesCount,
      required final List<String> likes,
      required final List<String> comments,
      required final List<String> shares,
      required final DateTime created,
      required final DateTime updated,
      required final String collectionId,
      required final String collectionName,
      final PostShortestOwnerExpand? ownerExpand}) = _$PostShortestImpl;
  const _PostShortest._() : super._();

  factory _PostShortest.fromJson(Map<String, dynamic> json) =
      _$PostShortestImpl.fromJson;

  @override
  String get postId;
  @override
  List<String>? get mediaUrls;
  @override
  String get content;
  @override
  VisibilityEnum get visibility;
  @override
  TypePostEnum get type;
  @override
  String get owner;
  @override
  int get viewsCount;
  @override
  int get likesCount;
  @override
  int get commentsCount;
  @override
  int get sharesCount;
  @override
  List<String> get likes;
  @override
  List<String> get comments;
  @override
  List<String> get shares;
  @override
  DateTime get created;
  @override
  DateTime get updated;
  @override
  String get collectionId;
  @override
  String get collectionName;
  @override
  PostShortestOwnerExpand? get ownerExpand;
  @override
  @JsonKey(ignore: true)
  _$$PostShortestImplCopyWith<_$PostShortestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostShortestOwnerExpand _$PostShortestOwnerExpandFromJson(
    Map<String, dynamic> json) {
  return _PostShortestOwnerExpand.fromJson(json);
}

/// @nodoc
mixin _$PostShortestOwnerExpand {
  UserShortest? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostShortestOwnerExpandCopyWith<PostShortestOwnerExpand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostShortestOwnerExpandCopyWith<$Res> {
  factory $PostShortestOwnerExpandCopyWith(PostShortestOwnerExpand value,
          $Res Function(PostShortestOwnerExpand) then) =
      _$PostShortestOwnerExpandCopyWithImpl<$Res, PostShortestOwnerExpand>;
  @useResult
  $Res call({UserShortest? owner});

  $UserShortestCopyWith<$Res>? get owner;
}

/// @nodoc
class _$PostShortestOwnerExpandCopyWithImpl<$Res,
        $Val extends PostShortestOwnerExpand>
    implements $PostShortestOwnerExpandCopyWith<$Res> {
  _$PostShortestOwnerExpandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserShortest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserShortestCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $UserShortestCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostShortestOwnerExpandImplCopyWith<$Res>
    implements $PostShortestOwnerExpandCopyWith<$Res> {
  factory _$$PostShortestOwnerExpandImplCopyWith(
          _$PostShortestOwnerExpandImpl value,
          $Res Function(_$PostShortestOwnerExpandImpl) then) =
      __$$PostShortestOwnerExpandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserShortest? owner});

  @override
  $UserShortestCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$PostShortestOwnerExpandImplCopyWithImpl<$Res>
    extends _$PostShortestOwnerExpandCopyWithImpl<$Res,
        _$PostShortestOwnerExpandImpl>
    implements _$$PostShortestOwnerExpandImplCopyWith<$Res> {
  __$$PostShortestOwnerExpandImplCopyWithImpl(
      _$PostShortestOwnerExpandImpl _value,
      $Res Function(_$PostShortestOwnerExpandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = freezed,
  }) {
    return _then(_$PostShortestOwnerExpandImpl(
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserShortest?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostShortestOwnerExpandImpl extends _PostShortestOwnerExpand {
  const _$PostShortestOwnerExpandImpl({this.owner}) : super._();

  factory _$PostShortestOwnerExpandImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostShortestOwnerExpandImplFromJson(json);

  @override
  final UserShortest? owner;

  @override
  String toString() {
    return 'PostShortestOwnerExpand(owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostShortestOwnerExpandImpl &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostShortestOwnerExpandImplCopyWith<_$PostShortestOwnerExpandImpl>
      get copyWith => __$$PostShortestOwnerExpandImplCopyWithImpl<
          _$PostShortestOwnerExpandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostShortestOwnerExpandImplToJson(
      this,
    );
  }
}

abstract class _PostShortestOwnerExpand extends PostShortestOwnerExpand {
  const factory _PostShortestOwnerExpand({final UserShortest? owner}) =
      _$PostShortestOwnerExpandImpl;
  const _PostShortestOwnerExpand._() : super._();

  factory _PostShortestOwnerExpand.fromJson(Map<String, dynamic> json) =
      _$PostShortestOwnerExpandImpl.fromJson;

  @override
  UserShortest? get owner;
  @override
  @JsonKey(ignore: true)
  _$$PostShortestOwnerExpandImplCopyWith<_$PostShortestOwnerExpandImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SharePost _$SharePostFromJson(Map<String, dynamic> json) {
  return _SharePost.fromJson(json);
}

/// @nodoc
mixin _$SharePost {
  String? get sharePostId => throw _privateConstructorUsedError;
  String? get owner => throw _privateConstructorUsedError;
  String? get postOwner => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;
  String? get collectionId => throw _privateConstructorUsedError;
  String? get collectionName => throw _privateConstructorUsedError;
  SharePostExpand? get expand => throw _privateConstructorUsedError;
  int? get likesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SharePostCopyWith<SharePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharePostCopyWith<$Res> {
  factory $SharePostCopyWith(SharePost value, $Res Function(SharePost) then) =
      _$SharePostCopyWithImpl<$Res, SharePost>;
  @useResult
  $Res call(
      {String? sharePostId,
      String? owner,
      String? postOwner,
      DateTime? created,
      DateTime? updated,
      String? collectionId,
      String? collectionName,
      SharePostExpand? expand,
      int? likesCount});

  $SharePostExpandCopyWith<$Res>? get expand;
}

/// @nodoc
class _$SharePostCopyWithImpl<$Res, $Val extends SharePost>
    implements $SharePostCopyWith<$Res> {
  _$SharePostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharePostId = freezed,
    Object? owner = freezed,
    Object? postOwner = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? expand = freezed,
    Object? likesCount = freezed,
  }) {
    return _then(_value.copyWith(
      sharePostId: freezed == sharePostId
          ? _value.sharePostId
          : sharePostId // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      postOwner: freezed == postOwner
          ? _value.postOwner
          : postOwner // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as SharePostExpand?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SharePostExpandCopyWith<$Res>? get expand {
    if (_value.expand == null) {
      return null;
    }

    return $SharePostExpandCopyWith<$Res>(_value.expand!, (value) {
      return _then(_value.copyWith(expand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SharePostImplCopyWith<$Res>
    implements $SharePostCopyWith<$Res> {
  factory _$$SharePostImplCopyWith(
          _$SharePostImpl value, $Res Function(_$SharePostImpl) then) =
      __$$SharePostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? sharePostId,
      String? owner,
      String? postOwner,
      DateTime? created,
      DateTime? updated,
      String? collectionId,
      String? collectionName,
      SharePostExpand? expand,
      int? likesCount});

  @override
  $SharePostExpandCopyWith<$Res>? get expand;
}

/// @nodoc
class __$$SharePostImplCopyWithImpl<$Res>
    extends _$SharePostCopyWithImpl<$Res, _$SharePostImpl>
    implements _$$SharePostImplCopyWith<$Res> {
  __$$SharePostImplCopyWithImpl(
      _$SharePostImpl _value, $Res Function(_$SharePostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharePostId = freezed,
    Object? owner = freezed,
    Object? postOwner = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? expand = freezed,
    Object? likesCount = freezed,
  }) {
    return _then(_$SharePostImpl(
      sharePostId: freezed == sharePostId
          ? _value.sharePostId
          : sharePostId // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      postOwner: freezed == postOwner
          ? _value.postOwner
          : postOwner // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as SharePostExpand?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SharePostImpl extends _SharePost {
  const _$SharePostImpl(
      {this.sharePostId,
      this.owner,
      this.postOwner,
      this.created,
      this.updated,
      this.collectionId,
      this.collectionName,
      this.expand,
      this.likesCount = 0})
      : super._();

  factory _$SharePostImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharePostImplFromJson(json);

  @override
  final String? sharePostId;
  @override
  final String? owner;
  @override
  final String? postOwner;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;
  @override
  final String? collectionId;
  @override
  final String? collectionName;
  @override
  final SharePostExpand? expand;
  @override
  @JsonKey()
  final int? likesCount;

  @override
  String toString() {
    return 'SharePost(sharePostId: $sharePostId, owner: $owner, postOwner: $postOwner, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, expand: $expand, likesCount: $likesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharePostImpl &&
            (identical(other.sharePostId, sharePostId) ||
                other.sharePostId == sharePostId) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.postOwner, postOwner) ||
                other.postOwner == postOwner) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.expand, expand) || other.expand == expand) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sharePostId, owner, postOwner,
      created, updated, collectionId, collectionName, expand, likesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SharePostImplCopyWith<_$SharePostImpl> get copyWith =>
      __$$SharePostImplCopyWithImpl<_$SharePostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SharePostImplToJson(
      this,
    );
  }
}

abstract class _SharePost extends SharePost {
  const factory _SharePost(
      {final String? sharePostId,
      final String? owner,
      final String? postOwner,
      final DateTime? created,
      final DateTime? updated,
      final String? collectionId,
      final String? collectionName,
      final SharePostExpand? expand,
      final int? likesCount}) = _$SharePostImpl;
  const _SharePost._() : super._();

  factory _SharePost.fromJson(Map<String, dynamic> json) =
      _$SharePostImpl.fromJson;

  @override
  String? get sharePostId;
  @override
  String? get owner;
  @override
  String? get postOwner;
  @override
  DateTime? get created;
  @override
  DateTime? get updated;
  @override
  String? get collectionId;
  @override
  String? get collectionName;
  @override
  SharePostExpand? get expand;
  @override
  int? get likesCount;
  @override
  @JsonKey(ignore: true)
  _$$SharePostImplCopyWith<_$SharePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SharePostExpand _$SharePostExpandFromJson(Map<String, dynamic> json) {
  return _SharePostExpand.fromJson(json);
}

/// @nodoc
mixin _$SharePostExpand {
  UserShortest? get owner => throw _privateConstructorUsedError;
  PostShortest? get postOwner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SharePostExpandCopyWith<SharePostExpand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharePostExpandCopyWith<$Res> {
  factory $SharePostExpandCopyWith(
          SharePostExpand value, $Res Function(SharePostExpand) then) =
      _$SharePostExpandCopyWithImpl<$Res, SharePostExpand>;
  @useResult
  $Res call({UserShortest? owner, PostShortest? postOwner});

  $UserShortestCopyWith<$Res>? get owner;
  $PostShortestCopyWith<$Res>? get postOwner;
}

/// @nodoc
class _$SharePostExpandCopyWithImpl<$Res, $Val extends SharePostExpand>
    implements $SharePostExpandCopyWith<$Res> {
  _$SharePostExpandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = freezed,
    Object? postOwner = freezed,
  }) {
    return _then(_value.copyWith(
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserShortest?,
      postOwner: freezed == postOwner
          ? _value.postOwner
          : postOwner // ignore: cast_nullable_to_non_nullable
              as PostShortest?,
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

  @override
  @pragma('vm:prefer-inline')
  $PostShortestCopyWith<$Res>? get postOwner {
    if (_value.postOwner == null) {
      return null;
    }

    return $PostShortestCopyWith<$Res>(_value.postOwner!, (value) {
      return _then(_value.copyWith(postOwner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SharePostExpandImplCopyWith<$Res>
    implements $SharePostExpandCopyWith<$Res> {
  factory _$$SharePostExpandImplCopyWith(_$SharePostExpandImpl value,
          $Res Function(_$SharePostExpandImpl) then) =
      __$$SharePostExpandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserShortest? owner, PostShortest? postOwner});

  @override
  $UserShortestCopyWith<$Res>? get owner;
  @override
  $PostShortestCopyWith<$Res>? get postOwner;
}

/// @nodoc
class __$$SharePostExpandImplCopyWithImpl<$Res>
    extends _$SharePostExpandCopyWithImpl<$Res, _$SharePostExpandImpl>
    implements _$$SharePostExpandImplCopyWith<$Res> {
  __$$SharePostExpandImplCopyWithImpl(
      _$SharePostExpandImpl _value, $Res Function(_$SharePostExpandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = freezed,
    Object? postOwner = freezed,
  }) {
    return _then(_$SharePostExpandImpl(
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserShortest?,
      postOwner: freezed == postOwner
          ? _value.postOwner
          : postOwner // ignore: cast_nullable_to_non_nullable
              as PostShortest?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SharePostExpandImpl extends _SharePostExpand {
  const _$SharePostExpandImpl({this.owner, this.postOwner}) : super._();

  factory _$SharePostExpandImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharePostExpandImplFromJson(json);

  @override
  final UserShortest? owner;
  @override
  final PostShortest? postOwner;

  @override
  String toString() {
    return 'SharePostExpand(owner: $owner, postOwner: $postOwner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharePostExpandImpl &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.postOwner, postOwner) ||
                other.postOwner == postOwner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, owner, postOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SharePostExpandImplCopyWith<_$SharePostExpandImpl> get copyWith =>
      __$$SharePostExpandImplCopyWithImpl<_$SharePostExpandImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SharePostExpandImplToJson(
      this,
    );
  }
}

abstract class _SharePostExpand extends SharePostExpand {
  const factory _SharePostExpand(
      {final UserShortest? owner,
      final PostShortest? postOwner}) = _$SharePostExpandImpl;
  const _SharePostExpand._() : super._();

  factory _SharePostExpand.fromJson(Map<String, dynamic> json) =
      _$SharePostExpandImpl.fromJson;

  @override
  UserShortest? get owner;
  @override
  PostShortest? get postOwner;
  @override
  @JsonKey(ignore: true)
  _$$SharePostExpandImplCopyWith<_$SharePostExpandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

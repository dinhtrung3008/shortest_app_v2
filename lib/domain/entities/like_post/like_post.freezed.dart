// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LikePost _$LikePostFromJson(Map<String, dynamic> json) {
  return _LikePost.fromJson(json);
}

/// @nodoc
mixin _$LikePost {
  String get likePostId => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get postOwner => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  String get collectionId => throw _privateConstructorUsedError;
  String get collectionName => throw _privateConstructorUsedError;
  LikePostExpand? get expand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikePostCopyWith<LikePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikePostCopyWith<$Res> {
  factory $LikePostCopyWith(LikePost value, $Res Function(LikePost) then) =
      _$LikePostCopyWithImpl<$Res, LikePost>;
  @useResult
  $Res call(
      {String likePostId,
      String owner,
      String postOwner,
      DateTime created,
      DateTime updated,
      String collectionId,
      String collectionName,
      LikePostExpand? expand});

  $LikePostExpandCopyWith<$Res>? get expand;
}

/// @nodoc
class _$LikePostCopyWithImpl<$Res, $Val extends LikePost>
    implements $LikePostCopyWith<$Res> {
  _$LikePostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likePostId = null,
    Object? owner = null,
    Object? postOwner = null,
    Object? created = null,
    Object? updated = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? expand = freezed,
  }) {
    return _then(_value.copyWith(
      likePostId: null == likePostId
          ? _value.likePostId
          : likePostId // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      postOwner: null == postOwner
          ? _value.postOwner
          : postOwner // ignore: cast_nullable_to_non_nullable
              as String,
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
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as LikePostExpand?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LikePostExpandCopyWith<$Res>? get expand {
    if (_value.expand == null) {
      return null;
    }

    return $LikePostExpandCopyWith<$Res>(_value.expand!, (value) {
      return _then(_value.copyWith(expand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LikePostImplCopyWith<$Res>
    implements $LikePostCopyWith<$Res> {
  factory _$$LikePostImplCopyWith(
          _$LikePostImpl value, $Res Function(_$LikePostImpl) then) =
      __$$LikePostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String likePostId,
      String owner,
      String postOwner,
      DateTime created,
      DateTime updated,
      String collectionId,
      String collectionName,
      LikePostExpand? expand});

  @override
  $LikePostExpandCopyWith<$Res>? get expand;
}

/// @nodoc
class __$$LikePostImplCopyWithImpl<$Res>
    extends _$LikePostCopyWithImpl<$Res, _$LikePostImpl>
    implements _$$LikePostImplCopyWith<$Res> {
  __$$LikePostImplCopyWithImpl(
      _$LikePostImpl _value, $Res Function(_$LikePostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likePostId = null,
    Object? owner = null,
    Object? postOwner = null,
    Object? created = null,
    Object? updated = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? expand = freezed,
  }) {
    return _then(_$LikePostImpl(
      likePostId: null == likePostId
          ? _value.likePostId
          : likePostId // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      postOwner: null == postOwner
          ? _value.postOwner
          : postOwner // ignore: cast_nullable_to_non_nullable
              as String,
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
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as LikePostExpand?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikePostImpl extends _LikePost {
  const _$LikePostImpl(
      {required this.likePostId,
      required this.owner,
      required this.postOwner,
      required this.created,
      required this.updated,
      required this.collectionId,
      required this.collectionName,
      this.expand})
      : super._();

  factory _$LikePostImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikePostImplFromJson(json);

  @override
  final String likePostId;
  @override
  final String owner;
  @override
  final String postOwner;
  @override
  final DateTime created;
  @override
  final DateTime updated;
  @override
  final String collectionId;
  @override
  final String collectionName;
  @override
  final LikePostExpand? expand;

  @override
  String toString() {
    return 'LikePost(likePostId: $likePostId, owner: $owner, postOwner: $postOwner, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, expand: $expand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikePostImpl &&
            (identical(other.likePostId, likePostId) ||
                other.likePostId == likePostId) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.postOwner, postOwner) ||
                other.postOwner == postOwner) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.expand, expand) || other.expand == expand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, likePostId, owner, postOwner,
      created, updated, collectionId, collectionName, expand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikePostImplCopyWith<_$LikePostImpl> get copyWith =>
      __$$LikePostImplCopyWithImpl<_$LikePostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikePostImplToJson(
      this,
    );
  }
}

abstract class _LikePost extends LikePost {
  const factory _LikePost(
      {required final String likePostId,
      required final String owner,
      required final String postOwner,
      required final DateTime created,
      required final DateTime updated,
      required final String collectionId,
      required final String collectionName,
      final LikePostExpand? expand}) = _$LikePostImpl;
  const _LikePost._() : super._();

  factory _LikePost.fromJson(Map<String, dynamic> json) =
      _$LikePostImpl.fromJson;

  @override
  String get likePostId;
  @override
  String get owner;
  @override
  String get postOwner;
  @override
  DateTime get created;
  @override
  DateTime get updated;
  @override
  String get collectionId;
  @override
  String get collectionName;
  @override
  LikePostExpand? get expand;
  @override
  @JsonKey(ignore: true)
  _$$LikePostImplCopyWith<_$LikePostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LikePostExpand _$LikePostExpandFromJson(Map<String, dynamic> json) {
  return _LikePostExpand.fromJson(json);
}

/// @nodoc
mixin _$LikePostExpand {
  UserShortest? get owner => throw _privateConstructorUsedError;
  PostShortest? get postOwner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikePostExpandCopyWith<LikePostExpand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikePostExpandCopyWith<$Res> {
  factory $LikePostExpandCopyWith(
          LikePostExpand value, $Res Function(LikePostExpand) then) =
      _$LikePostExpandCopyWithImpl<$Res, LikePostExpand>;
  @useResult
  $Res call({UserShortest? owner, PostShortest? postOwner});

  $UserShortestCopyWith<$Res>? get owner;
  $PostShortestCopyWith<$Res>? get postOwner;
}

/// @nodoc
class _$LikePostExpandCopyWithImpl<$Res, $Val extends LikePostExpand>
    implements $LikePostExpandCopyWith<$Res> {
  _$LikePostExpandCopyWithImpl(this._value, this._then);

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
abstract class _$$LikePostExpandImplCopyWith<$Res>
    implements $LikePostExpandCopyWith<$Res> {
  factory _$$LikePostExpandImplCopyWith(_$LikePostExpandImpl value,
          $Res Function(_$LikePostExpandImpl) then) =
      __$$LikePostExpandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserShortest? owner, PostShortest? postOwner});

  @override
  $UserShortestCopyWith<$Res>? get owner;
  @override
  $PostShortestCopyWith<$Res>? get postOwner;
}

/// @nodoc
class __$$LikePostExpandImplCopyWithImpl<$Res>
    extends _$LikePostExpandCopyWithImpl<$Res, _$LikePostExpandImpl>
    implements _$$LikePostExpandImplCopyWith<$Res> {
  __$$LikePostExpandImplCopyWithImpl(
      _$LikePostExpandImpl _value, $Res Function(_$LikePostExpandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = freezed,
    Object? postOwner = freezed,
  }) {
    return _then(_$LikePostExpandImpl(
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
class _$LikePostExpandImpl extends _LikePostExpand {
  const _$LikePostExpandImpl({this.owner, this.postOwner}) : super._();

  factory _$LikePostExpandImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikePostExpandImplFromJson(json);

  @override
  final UserShortest? owner;
  @override
  final PostShortest? postOwner;

  @override
  String toString() {
    return 'LikePostExpand(owner: $owner, postOwner: $postOwner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikePostExpandImpl &&
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
  _$$LikePostExpandImplCopyWith<_$LikePostExpandImpl> get copyWith =>
      __$$LikePostExpandImplCopyWithImpl<_$LikePostExpandImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikePostExpandImplToJson(
      this,
    );
  }
}

abstract class _LikePostExpand extends LikePostExpand {
  const factory _LikePostExpand(
      {final UserShortest? owner,
      final PostShortest? postOwner}) = _$LikePostExpandImpl;
  const _LikePostExpand._() : super._();

  factory _LikePostExpand.fromJson(Map<String, dynamic> json) =
      _$LikePostExpandImpl.fromJson;

  @override
  UserShortest? get owner;
  @override
  PostShortest? get postOwner;
  @override
  @JsonKey(ignore: true)
  _$$LikePostExpandImplCopyWith<_$LikePostExpandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

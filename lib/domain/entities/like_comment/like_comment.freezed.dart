// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LikeComment _$LikeCommentFromJson(Map<String, dynamic> json) {
  return _LikeComment.fromJson(json);
}

/// @nodoc
mixin _$LikeComment {
  String get likeCommentId => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get commentOwner => throw _privateConstructorUsedError;
  String get collectionId => throw _privateConstructorUsedError;
  String get collectionName => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  LikeCommentExpand? get expand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeCommentCopyWith<LikeComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeCommentCopyWith<$Res> {
  factory $LikeCommentCopyWith(
          LikeComment value, $Res Function(LikeComment) then) =
      _$LikeCommentCopyWithImpl<$Res, LikeComment>;
  @useResult
  $Res call(
      {String likeCommentId,
      String owner,
      String commentOwner,
      String collectionId,
      String collectionName,
      DateTime created,
      DateTime updated,
      LikeCommentExpand? expand});

  $LikeCommentExpandCopyWith<$Res>? get expand;
}

/// @nodoc
class _$LikeCommentCopyWithImpl<$Res, $Val extends LikeComment>
    implements $LikeCommentCopyWith<$Res> {
  _$LikeCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likeCommentId = null,
    Object? owner = null,
    Object? commentOwner = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? expand = freezed,
  }) {
    return _then(_value.copyWith(
      likeCommentId: null == likeCommentId
          ? _value.likeCommentId
          : likeCommentId // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      commentOwner: null == commentOwner
          ? _value.commentOwner
          : commentOwner // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as LikeCommentExpand?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LikeCommentExpandCopyWith<$Res>? get expand {
    if (_value.expand == null) {
      return null;
    }

    return $LikeCommentExpandCopyWith<$Res>(_value.expand!, (value) {
      return _then(_value.copyWith(expand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LikeCommentImplCopyWith<$Res>
    implements $LikeCommentCopyWith<$Res> {
  factory _$$LikeCommentImplCopyWith(
          _$LikeCommentImpl value, $Res Function(_$LikeCommentImpl) then) =
      __$$LikeCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String likeCommentId,
      String owner,
      String commentOwner,
      String collectionId,
      String collectionName,
      DateTime created,
      DateTime updated,
      LikeCommentExpand? expand});

  @override
  $LikeCommentExpandCopyWith<$Res>? get expand;
}

/// @nodoc
class __$$LikeCommentImplCopyWithImpl<$Res>
    extends _$LikeCommentCopyWithImpl<$Res, _$LikeCommentImpl>
    implements _$$LikeCommentImplCopyWith<$Res> {
  __$$LikeCommentImplCopyWithImpl(
      _$LikeCommentImpl _value, $Res Function(_$LikeCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likeCommentId = null,
    Object? owner = null,
    Object? commentOwner = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? created = null,
    Object? updated = null,
    Object? expand = freezed,
  }) {
    return _then(_$LikeCommentImpl(
      likeCommentId: null == likeCommentId
          ? _value.likeCommentId
          : likeCommentId // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      commentOwner: null == commentOwner
          ? _value.commentOwner
          : commentOwner // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as LikeCommentExpand?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikeCommentImpl extends _LikeComment {
  const _$LikeCommentImpl(
      {required this.likeCommentId,
      required this.owner,
      required this.commentOwner,
      required this.collectionId,
      required this.collectionName,
      required this.created,
      required this.updated,
      this.expand})
      : super._();

  factory _$LikeCommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeCommentImplFromJson(json);

  @override
  final String likeCommentId;
  @override
  final String owner;
  @override
  final String commentOwner;
  @override
  final String collectionId;
  @override
  final String collectionName;
  @override
  final DateTime created;
  @override
  final DateTime updated;
  @override
  final LikeCommentExpand? expand;

  @override
  String toString() {
    return 'LikeComment(likeCommentId: $likeCommentId, owner: $owner, commentOwner: $commentOwner, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, expand: $expand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeCommentImpl &&
            (identical(other.likeCommentId, likeCommentId) ||
                other.likeCommentId == likeCommentId) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.commentOwner, commentOwner) ||
                other.commentOwner == commentOwner) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.expand, expand) || other.expand == expand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, likeCommentId, owner,
      commentOwner, collectionId, collectionName, created, updated, expand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeCommentImplCopyWith<_$LikeCommentImpl> get copyWith =>
      __$$LikeCommentImplCopyWithImpl<_$LikeCommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeCommentImplToJson(
      this,
    );
  }
}

abstract class _LikeComment extends LikeComment {
  const factory _LikeComment(
      {required final String likeCommentId,
      required final String owner,
      required final String commentOwner,
      required final String collectionId,
      required final String collectionName,
      required final DateTime created,
      required final DateTime updated,
      final LikeCommentExpand? expand}) = _$LikeCommentImpl;
  const _LikeComment._() : super._();

  factory _LikeComment.fromJson(Map<String, dynamic> json) =
      _$LikeCommentImpl.fromJson;

  @override
  String get likeCommentId;
  @override
  String get owner;
  @override
  String get commentOwner;
  @override
  String get collectionId;
  @override
  String get collectionName;
  @override
  DateTime get created;
  @override
  DateTime get updated;
  @override
  LikeCommentExpand? get expand;
  @override
  @JsonKey(ignore: true)
  _$$LikeCommentImplCopyWith<_$LikeCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LikeCommentExpand _$LikeCommentExpandFromJson(Map<String, dynamic> json) {
  return _LikeCommentExpand.fromJson(json);
}

/// @nodoc
mixin _$LikeCommentExpand {
  UserShortest? get owner => throw _privateConstructorUsedError;
  CommentPost? get commentOwner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeCommentExpandCopyWith<LikeCommentExpand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeCommentExpandCopyWith<$Res> {
  factory $LikeCommentExpandCopyWith(
          LikeCommentExpand value, $Res Function(LikeCommentExpand) then) =
      _$LikeCommentExpandCopyWithImpl<$Res, LikeCommentExpand>;
  @useResult
  $Res call({UserShortest? owner, CommentPost? commentOwner});

  $UserShortestCopyWith<$Res>? get owner;
  $CommentPostCopyWith<$Res>? get commentOwner;
}

/// @nodoc
class _$LikeCommentExpandCopyWithImpl<$Res, $Val extends LikeCommentExpand>
    implements $LikeCommentExpandCopyWith<$Res> {
  _$LikeCommentExpandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = freezed,
    Object? commentOwner = freezed,
  }) {
    return _then(_value.copyWith(
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserShortest?,
      commentOwner: freezed == commentOwner
          ? _value.commentOwner
          : commentOwner // ignore: cast_nullable_to_non_nullable
              as CommentPost?,
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
  $CommentPostCopyWith<$Res>? get commentOwner {
    if (_value.commentOwner == null) {
      return null;
    }

    return $CommentPostCopyWith<$Res>(_value.commentOwner!, (value) {
      return _then(_value.copyWith(commentOwner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LikeCommentExpandImplCopyWith<$Res>
    implements $LikeCommentExpandCopyWith<$Res> {
  factory _$$LikeCommentExpandImplCopyWith(_$LikeCommentExpandImpl value,
          $Res Function(_$LikeCommentExpandImpl) then) =
      __$$LikeCommentExpandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserShortest? owner, CommentPost? commentOwner});

  @override
  $UserShortestCopyWith<$Res>? get owner;
  @override
  $CommentPostCopyWith<$Res>? get commentOwner;
}

/// @nodoc
class __$$LikeCommentExpandImplCopyWithImpl<$Res>
    extends _$LikeCommentExpandCopyWithImpl<$Res, _$LikeCommentExpandImpl>
    implements _$$LikeCommentExpandImplCopyWith<$Res> {
  __$$LikeCommentExpandImplCopyWithImpl(_$LikeCommentExpandImpl _value,
      $Res Function(_$LikeCommentExpandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = freezed,
    Object? commentOwner = freezed,
  }) {
    return _then(_$LikeCommentExpandImpl(
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserShortest?,
      commentOwner: freezed == commentOwner
          ? _value.commentOwner
          : commentOwner // ignore: cast_nullable_to_non_nullable
              as CommentPost?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikeCommentExpandImpl extends _LikeCommentExpand {
  const _$LikeCommentExpandImpl({this.owner, this.commentOwner}) : super._();

  factory _$LikeCommentExpandImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeCommentExpandImplFromJson(json);

  @override
  final UserShortest? owner;
  @override
  final CommentPost? commentOwner;

  @override
  String toString() {
    return 'LikeCommentExpand(owner: $owner, commentOwner: $commentOwner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeCommentExpandImpl &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.commentOwner, commentOwner) ||
                other.commentOwner == commentOwner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, owner, commentOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeCommentExpandImplCopyWith<_$LikeCommentExpandImpl> get copyWith =>
      __$$LikeCommentExpandImplCopyWithImpl<_$LikeCommentExpandImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeCommentExpandImplToJson(
      this,
    );
  }
}

abstract class _LikeCommentExpand extends LikeCommentExpand {
  const factory _LikeCommentExpand(
      {final UserShortest? owner,
      final CommentPost? commentOwner}) = _$LikeCommentExpandImpl;
  const _LikeCommentExpand._() : super._();

  factory _LikeCommentExpand.fromJson(Map<String, dynamic> json) =
      _$LikeCommentExpandImpl.fromJson;

  @override
  UserShortest? get owner;
  @override
  CommentPost? get commentOwner;
  @override
  @JsonKey(ignore: true)
  _$$LikeCommentExpandImplCopyWith<_$LikeCommentExpandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

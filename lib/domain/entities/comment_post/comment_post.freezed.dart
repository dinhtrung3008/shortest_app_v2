// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentPost _$CommentPostFromJson(Map<String, dynamic> json) {
  return _CommentPost.fromJson(json);
}

/// @nodoc
mixin _$CommentPost {
  String get commentPostId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  List<String>? get mediaUrls => throw _privateConstructorUsedError;
  String get postOwner => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  String get collectionId => throw _privateConstructorUsedError;
  String get collectionName => throw _privateConstructorUsedError;
  CommentPostExpand? get expand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentPostCopyWith<CommentPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPostCopyWith<$Res> {
  factory $CommentPostCopyWith(
          CommentPost value, $Res Function(CommentPost) then) =
      _$CommentPostCopyWithImpl<$Res, CommentPost>;
  @useResult
  $Res call(
      {String commentPostId,
      String content,
      String owner,
      List<String>? mediaUrls,
      String postOwner,
      DateTime created,
      DateTime updated,
      String collectionId,
      String collectionName,
      CommentPostExpand? expand});

  $CommentPostExpandCopyWith<$Res>? get expand;
}

/// @nodoc
class _$CommentPostCopyWithImpl<$Res, $Val extends CommentPost>
    implements $CommentPostCopyWith<$Res> {
  _$CommentPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentPostId = null,
    Object? content = null,
    Object? owner = null,
    Object? mediaUrls = freezed,
    Object? postOwner = null,
    Object? created = null,
    Object? updated = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? expand = freezed,
  }) {
    return _then(_value.copyWith(
      commentPostId: null == commentPostId
          ? _value.commentPostId
          : commentPostId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrls: freezed == mediaUrls
          ? _value.mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
              as CommentPostExpand?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentPostExpandCopyWith<$Res>? get expand {
    if (_value.expand == null) {
      return null;
    }

    return $CommentPostExpandCopyWith<$Res>(_value.expand!, (value) {
      return _then(_value.copyWith(expand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentPostImplCopyWith<$Res>
    implements $CommentPostCopyWith<$Res> {
  factory _$$CommentPostImplCopyWith(
          _$CommentPostImpl value, $Res Function(_$CommentPostImpl) then) =
      __$$CommentPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String commentPostId,
      String content,
      String owner,
      List<String>? mediaUrls,
      String postOwner,
      DateTime created,
      DateTime updated,
      String collectionId,
      String collectionName,
      CommentPostExpand? expand});

  @override
  $CommentPostExpandCopyWith<$Res>? get expand;
}

/// @nodoc
class __$$CommentPostImplCopyWithImpl<$Res>
    extends _$CommentPostCopyWithImpl<$Res, _$CommentPostImpl>
    implements _$$CommentPostImplCopyWith<$Res> {
  __$$CommentPostImplCopyWithImpl(
      _$CommentPostImpl _value, $Res Function(_$CommentPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentPostId = null,
    Object? content = null,
    Object? owner = null,
    Object? mediaUrls = freezed,
    Object? postOwner = null,
    Object? created = null,
    Object? updated = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? expand = freezed,
  }) {
    return _then(_$CommentPostImpl(
      commentPostId: null == commentPostId
          ? _value.commentPostId
          : commentPostId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrls: freezed == mediaUrls
          ? _value._mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
              as CommentPostExpand?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentPostImpl extends _CommentPost {
  const _$CommentPostImpl(
      {required this.commentPostId,
      required this.content,
      required this.owner,
      final List<String>? mediaUrls,
      required this.postOwner,
      required this.created,
      required this.updated,
      required this.collectionId,
      required this.collectionName,
      this.expand})
      : _mediaUrls = mediaUrls,
        super._();

  factory _$CommentPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentPostImplFromJson(json);

  @override
  final String commentPostId;
  @override
  final String content;
  @override
  final String owner;
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
  final CommentPostExpand? expand;

  @override
  String toString() {
    return 'CommentPost(commentPostId: $commentPostId, content: $content, owner: $owner, mediaUrls: $mediaUrls, postOwner: $postOwner, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, expand: $expand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentPostImpl &&
            (identical(other.commentPostId, commentPostId) ||
                other.commentPostId == commentPostId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality()
                .equals(other._mediaUrls, _mediaUrls) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      commentPostId,
      content,
      owner,
      const DeepCollectionEquality().hash(_mediaUrls),
      postOwner,
      created,
      updated,
      collectionId,
      collectionName,
      expand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentPostImplCopyWith<_$CommentPostImpl> get copyWith =>
      __$$CommentPostImplCopyWithImpl<_$CommentPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentPostImplToJson(
      this,
    );
  }
}

abstract class _CommentPost extends CommentPost {
  const factory _CommentPost(
      {required final String commentPostId,
      required final String content,
      required final String owner,
      final List<String>? mediaUrls,
      required final String postOwner,
      required final DateTime created,
      required final DateTime updated,
      required final String collectionId,
      required final String collectionName,
      final CommentPostExpand? expand}) = _$CommentPostImpl;
  const _CommentPost._() : super._();

  factory _CommentPost.fromJson(Map<String, dynamic> json) =
      _$CommentPostImpl.fromJson;

  @override
  String get commentPostId;
  @override
  String get content;
  @override
  String get owner;
  @override
  List<String>? get mediaUrls;
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
  CommentPostExpand? get expand;
  @override
  @JsonKey(ignore: true)
  _$$CommentPostImplCopyWith<_$CommentPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentPostExpand _$CommentPostExpandFromJson(Map<String, dynamic> json) {
  return _CommentPostExpand.fromJson(json);
}

/// @nodoc
mixin _$CommentPostExpand {
  UserShortest? get owner => throw _privateConstructorUsedError;
  PostShortest? get postOwner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentPostExpandCopyWith<CommentPostExpand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPostExpandCopyWith<$Res> {
  factory $CommentPostExpandCopyWith(
          CommentPostExpand value, $Res Function(CommentPostExpand) then) =
      _$CommentPostExpandCopyWithImpl<$Res, CommentPostExpand>;
  @useResult
  $Res call({UserShortest? owner, PostShortest? postOwner});

  $UserShortestCopyWith<$Res>? get owner;
  $PostShortestCopyWith<$Res>? get postOwner;
}

/// @nodoc
class _$CommentPostExpandCopyWithImpl<$Res, $Val extends CommentPostExpand>
    implements $CommentPostExpandCopyWith<$Res> {
  _$CommentPostExpandCopyWithImpl(this._value, this._then);

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
abstract class _$$CommentPostExpandImplCopyWith<$Res>
    implements $CommentPostExpandCopyWith<$Res> {
  factory _$$CommentPostExpandImplCopyWith(_$CommentPostExpandImpl value,
          $Res Function(_$CommentPostExpandImpl) then) =
      __$$CommentPostExpandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserShortest? owner, PostShortest? postOwner});

  @override
  $UserShortestCopyWith<$Res>? get owner;
  @override
  $PostShortestCopyWith<$Res>? get postOwner;
}

/// @nodoc
class __$$CommentPostExpandImplCopyWithImpl<$Res>
    extends _$CommentPostExpandCopyWithImpl<$Res, _$CommentPostExpandImpl>
    implements _$$CommentPostExpandImplCopyWith<$Res> {
  __$$CommentPostExpandImplCopyWithImpl(_$CommentPostExpandImpl _value,
      $Res Function(_$CommentPostExpandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = freezed,
    Object? postOwner = freezed,
  }) {
    return _then(_$CommentPostExpandImpl(
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
class _$CommentPostExpandImpl extends _CommentPostExpand {
  const _$CommentPostExpandImpl({this.owner, this.postOwner}) : super._();

  factory _$CommentPostExpandImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentPostExpandImplFromJson(json);

  @override
  final UserShortest? owner;
  @override
  final PostShortest? postOwner;

  @override
  String toString() {
    return 'CommentPostExpand(owner: $owner, postOwner: $postOwner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentPostExpandImpl &&
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
  _$$CommentPostExpandImplCopyWith<_$CommentPostExpandImpl> get copyWith =>
      __$$CommentPostExpandImplCopyWithImpl<_$CommentPostExpandImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentPostExpandImplToJson(
      this,
    );
  }
}

abstract class _CommentPostExpand extends CommentPostExpand {
  const factory _CommentPostExpand(
      {final UserShortest? owner,
      final PostShortest? postOwner}) = _$CommentPostExpandImpl;
  const _CommentPostExpand._() : super._();

  factory _CommentPostExpand.fromJson(Map<String, dynamic> json) =
      _$CommentPostExpandImpl.fromJson;

  @override
  UserShortest? get owner;
  @override
  PostShortest? get postOwner;
  @override
  @JsonKey(ignore: true)
  _$$CommentPostExpandImplCopyWith<_$CommentPostExpandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

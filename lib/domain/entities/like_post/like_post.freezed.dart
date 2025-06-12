// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LikePost {

 String get likePostId; String get owner; String get postOwner; DateTime get created; DateTime get updated; String get collectionId; String get collectionName; LikePostExpand? get expand;
/// Create a copy of LikePost
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikePostCopyWith<LikePost> get copyWith => _$LikePostCopyWithImpl<LikePost>(this as LikePost, _$identity);

  /// Serializes this LikePost to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikePost&&(identical(other.likePostId, likePostId) || other.likePostId == likePostId)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.postOwner, postOwner) || other.postOwner == postOwner)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.expand, expand) || other.expand == expand));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,likePostId,owner,postOwner,created,updated,collectionId,collectionName,expand);

@override
String toString() {
  return 'LikePost(likePostId: $likePostId, owner: $owner, postOwner: $postOwner, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, expand: $expand)';
}


}

/// @nodoc
abstract mixin class $LikePostCopyWith<$Res>  {
  factory $LikePostCopyWith(LikePost value, $Res Function(LikePost) _then) = _$LikePostCopyWithImpl;
@useResult
$Res call({
 String likePostId, String owner, String postOwner, DateTime created, DateTime updated, String collectionId, String collectionName, LikePostExpand? expand
});


$LikePostExpandCopyWith<$Res>? get expand;

}
/// @nodoc
class _$LikePostCopyWithImpl<$Res>
    implements $LikePostCopyWith<$Res> {
  _$LikePostCopyWithImpl(this._self, this._then);

  final LikePost _self;
  final $Res Function(LikePost) _then;

/// Create a copy of LikePost
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? likePostId = null,Object? owner = null,Object? postOwner = null,Object? created = null,Object? updated = null,Object? collectionId = null,Object? collectionName = null,Object? expand = freezed,}) {
  return _then(_self.copyWith(
likePostId: null == likePostId ? _self.likePostId : likePostId // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,postOwner: null == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,expand: freezed == expand ? _self.expand : expand // ignore: cast_nullable_to_non_nullable
as LikePostExpand?,
  ));
}
/// Create a copy of LikePost
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LikePostExpandCopyWith<$Res>? get expand {
    if (_self.expand == null) {
    return null;
  }

  return $LikePostExpandCopyWith<$Res>(_self.expand!, (value) {
    return _then(_self.copyWith(expand: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _LikePost extends LikePost {
  const _LikePost({required this.likePostId, required this.owner, required this.postOwner, required this.created, required this.updated, required this.collectionId, required this.collectionName, this.expand}): super._();
  factory _LikePost.fromJson(Map<String, dynamic> json) => _$LikePostFromJson(json);

@override final  String likePostId;
@override final  String owner;
@override final  String postOwner;
@override final  DateTime created;
@override final  DateTime updated;
@override final  String collectionId;
@override final  String collectionName;
@override final  LikePostExpand? expand;

/// Create a copy of LikePost
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikePostCopyWith<_LikePost> get copyWith => __$LikePostCopyWithImpl<_LikePost>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LikePostToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikePost&&(identical(other.likePostId, likePostId) || other.likePostId == likePostId)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.postOwner, postOwner) || other.postOwner == postOwner)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.expand, expand) || other.expand == expand));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,likePostId,owner,postOwner,created,updated,collectionId,collectionName,expand);

@override
String toString() {
  return 'LikePost(likePostId: $likePostId, owner: $owner, postOwner: $postOwner, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, expand: $expand)';
}


}

/// @nodoc
abstract mixin class _$LikePostCopyWith<$Res> implements $LikePostCopyWith<$Res> {
  factory _$LikePostCopyWith(_LikePost value, $Res Function(_LikePost) _then) = __$LikePostCopyWithImpl;
@override @useResult
$Res call({
 String likePostId, String owner, String postOwner, DateTime created, DateTime updated, String collectionId, String collectionName, LikePostExpand? expand
});


@override $LikePostExpandCopyWith<$Res>? get expand;

}
/// @nodoc
class __$LikePostCopyWithImpl<$Res>
    implements _$LikePostCopyWith<$Res> {
  __$LikePostCopyWithImpl(this._self, this._then);

  final _LikePost _self;
  final $Res Function(_LikePost) _then;

/// Create a copy of LikePost
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? likePostId = null,Object? owner = null,Object? postOwner = null,Object? created = null,Object? updated = null,Object? collectionId = null,Object? collectionName = null,Object? expand = freezed,}) {
  return _then(_LikePost(
likePostId: null == likePostId ? _self.likePostId : likePostId // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,postOwner: null == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,expand: freezed == expand ? _self.expand : expand // ignore: cast_nullable_to_non_nullable
as LikePostExpand?,
  ));
}

/// Create a copy of LikePost
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LikePostExpandCopyWith<$Res>? get expand {
    if (_self.expand == null) {
    return null;
  }

  return $LikePostExpandCopyWith<$Res>(_self.expand!, (value) {
    return _then(_self.copyWith(expand: value));
  });
}
}


/// @nodoc
mixin _$LikePostExpand {

 UserShortest? get owner; PostShortest? get postOwner;
/// Create a copy of LikePostExpand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikePostExpandCopyWith<LikePostExpand> get copyWith => _$LikePostExpandCopyWithImpl<LikePostExpand>(this as LikePostExpand, _$identity);

  /// Serializes this LikePostExpand to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikePostExpand&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.postOwner, postOwner) || other.postOwner == postOwner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,owner,postOwner);

@override
String toString() {
  return 'LikePostExpand(owner: $owner, postOwner: $postOwner)';
}


}

/// @nodoc
abstract mixin class $LikePostExpandCopyWith<$Res>  {
  factory $LikePostExpandCopyWith(LikePostExpand value, $Res Function(LikePostExpand) _then) = _$LikePostExpandCopyWithImpl;
@useResult
$Res call({
 UserShortest? owner, PostShortest? postOwner
});


$UserShortestCopyWith<$Res>? get owner;$PostShortestCopyWith<$Res>? get postOwner;

}
/// @nodoc
class _$LikePostExpandCopyWithImpl<$Res>
    implements $LikePostExpandCopyWith<$Res> {
  _$LikePostExpandCopyWithImpl(this._self, this._then);

  final LikePostExpand _self;
  final $Res Function(LikePostExpand) _then;

/// Create a copy of LikePostExpand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? owner = freezed,Object? postOwner = freezed,}) {
  return _then(_self.copyWith(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserShortest?,postOwner: freezed == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as PostShortest?,
  ));
}
/// Create a copy of LikePostExpand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserShortestCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $UserShortestCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of LikePostExpand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostShortestCopyWith<$Res>? get postOwner {
    if (_self.postOwner == null) {
    return null;
  }

  return $PostShortestCopyWith<$Res>(_self.postOwner!, (value) {
    return _then(_self.copyWith(postOwner: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _LikePostExpand extends LikePostExpand {
  const _LikePostExpand({this.owner, this.postOwner}): super._();
  factory _LikePostExpand.fromJson(Map<String, dynamic> json) => _$LikePostExpandFromJson(json);

@override final  UserShortest? owner;
@override final  PostShortest? postOwner;

/// Create a copy of LikePostExpand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikePostExpandCopyWith<_LikePostExpand> get copyWith => __$LikePostExpandCopyWithImpl<_LikePostExpand>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LikePostExpandToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikePostExpand&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.postOwner, postOwner) || other.postOwner == postOwner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,owner,postOwner);

@override
String toString() {
  return 'LikePostExpand(owner: $owner, postOwner: $postOwner)';
}


}

/// @nodoc
abstract mixin class _$LikePostExpandCopyWith<$Res> implements $LikePostExpandCopyWith<$Res> {
  factory _$LikePostExpandCopyWith(_LikePostExpand value, $Res Function(_LikePostExpand) _then) = __$LikePostExpandCopyWithImpl;
@override @useResult
$Res call({
 UserShortest? owner, PostShortest? postOwner
});


@override $UserShortestCopyWith<$Res>? get owner;@override $PostShortestCopyWith<$Res>? get postOwner;

}
/// @nodoc
class __$LikePostExpandCopyWithImpl<$Res>
    implements _$LikePostExpandCopyWith<$Res> {
  __$LikePostExpandCopyWithImpl(this._self, this._then);

  final _LikePostExpand _self;
  final $Res Function(_LikePostExpand) _then;

/// Create a copy of LikePostExpand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? owner = freezed,Object? postOwner = freezed,}) {
  return _then(_LikePostExpand(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserShortest?,postOwner: freezed == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as PostShortest?,
  ));
}

/// Create a copy of LikePostExpand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserShortestCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $UserShortestCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of LikePostExpand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostShortestCopyWith<$Res>? get postOwner {
    if (_self.postOwner == null) {
    return null;
  }

  return $PostShortestCopyWith<$Res>(_self.postOwner!, (value) {
    return _then(_self.copyWith(postOwner: value));
  });
}
}

// dart format on

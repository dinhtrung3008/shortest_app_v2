// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SharePost {

 String? get sharePostId; String? get owner; String? get postOwner; DateTime? get created; DateTime? get updated; String? get collectionId; String? get collectionName; SharePostExpand? get expand; int? get likesCount;
/// Create a copy of SharePost
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SharePostCopyWith<SharePost> get copyWith => _$SharePostCopyWithImpl<SharePost>(this as SharePost, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SharePost&&(identical(other.sharePostId, sharePostId) || other.sharePostId == sharePostId)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.postOwner, postOwner) || other.postOwner == postOwner)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.expand, expand) || other.expand == expand)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount));
}


@override
int get hashCode => Object.hash(runtimeType,sharePostId,owner,postOwner,created,updated,collectionId,collectionName,expand,likesCount);

@override
String toString() {
  return 'SharePost(sharePostId: $sharePostId, owner: $owner, postOwner: $postOwner, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, expand: $expand, likesCount: $likesCount)';
}


}

/// @nodoc
abstract mixin class $SharePostCopyWith<$Res>  {
  factory $SharePostCopyWith(SharePost value, $Res Function(SharePost) _then) = _$SharePostCopyWithImpl;
@useResult
$Res call({
 String? sharePostId, String? owner, String? postOwner, DateTime? created, DateTime? updated, String? collectionId, String? collectionName, SharePostExpand? expand, int? likesCount
});


$SharePostExpandCopyWith<$Res>? get expand;

}
/// @nodoc
class _$SharePostCopyWithImpl<$Res>
    implements $SharePostCopyWith<$Res> {
  _$SharePostCopyWithImpl(this._self, this._then);

  final SharePost _self;
  final $Res Function(SharePost) _then;

/// Create a copy of SharePost
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sharePostId = freezed,Object? owner = freezed,Object? postOwner = freezed,Object? created = freezed,Object? updated = freezed,Object? collectionId = freezed,Object? collectionName = freezed,Object? expand = freezed,Object? likesCount = freezed,}) {
  return _then(_self.copyWith(
sharePostId: freezed == sharePostId ? _self.sharePostId : sharePostId // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,postOwner: freezed == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as String?,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime?,updated: freezed == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime?,collectionId: freezed == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String?,collectionName: freezed == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String?,expand: freezed == expand ? _self.expand : expand // ignore: cast_nullable_to_non_nullable
as SharePostExpand?,likesCount: freezed == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of SharePost
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SharePostExpandCopyWith<$Res>? get expand {
    if (_self.expand == null) {
    return null;
  }

  return $SharePostExpandCopyWith<$Res>(_self.expand!, (value) {
    return _then(_self.copyWith(expand: value));
  });
}
}


/// @nodoc


class _SharePost extends SharePost {
  const _SharePost({this.sharePostId, this.owner, this.postOwner, this.created, this.updated, this.collectionId, this.collectionName, this.expand, this.likesCount = 0}): super._();
  

@override final  String? sharePostId;
@override final  String? owner;
@override final  String? postOwner;
@override final  DateTime? created;
@override final  DateTime? updated;
@override final  String? collectionId;
@override final  String? collectionName;
@override final  SharePostExpand? expand;
@override@JsonKey() final  int? likesCount;

/// Create a copy of SharePost
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SharePostCopyWith<_SharePost> get copyWith => __$SharePostCopyWithImpl<_SharePost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SharePost&&(identical(other.sharePostId, sharePostId) || other.sharePostId == sharePostId)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.postOwner, postOwner) || other.postOwner == postOwner)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.expand, expand) || other.expand == expand)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount));
}


@override
int get hashCode => Object.hash(runtimeType,sharePostId,owner,postOwner,created,updated,collectionId,collectionName,expand,likesCount);

@override
String toString() {
  return 'SharePost(sharePostId: $sharePostId, owner: $owner, postOwner: $postOwner, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, expand: $expand, likesCount: $likesCount)';
}


}

/// @nodoc
abstract mixin class _$SharePostCopyWith<$Res> implements $SharePostCopyWith<$Res> {
  factory _$SharePostCopyWith(_SharePost value, $Res Function(_SharePost) _then) = __$SharePostCopyWithImpl;
@override @useResult
$Res call({
 String? sharePostId, String? owner, String? postOwner, DateTime? created, DateTime? updated, String? collectionId, String? collectionName, SharePostExpand? expand, int? likesCount
});


@override $SharePostExpandCopyWith<$Res>? get expand;

}
/// @nodoc
class __$SharePostCopyWithImpl<$Res>
    implements _$SharePostCopyWith<$Res> {
  __$SharePostCopyWithImpl(this._self, this._then);

  final _SharePost _self;
  final $Res Function(_SharePost) _then;

/// Create a copy of SharePost
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sharePostId = freezed,Object? owner = freezed,Object? postOwner = freezed,Object? created = freezed,Object? updated = freezed,Object? collectionId = freezed,Object? collectionName = freezed,Object? expand = freezed,Object? likesCount = freezed,}) {
  return _then(_SharePost(
sharePostId: freezed == sharePostId ? _self.sharePostId : sharePostId // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,postOwner: freezed == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as String?,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime?,updated: freezed == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime?,collectionId: freezed == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String?,collectionName: freezed == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String?,expand: freezed == expand ? _self.expand : expand // ignore: cast_nullable_to_non_nullable
as SharePostExpand?,likesCount: freezed == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of SharePost
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SharePostExpandCopyWith<$Res>? get expand {
    if (_self.expand == null) {
    return null;
  }

  return $SharePostExpandCopyWith<$Res>(_self.expand!, (value) {
    return _then(_self.copyWith(expand: value));
  });
}
}

/// @nodoc
mixin _$SharePostExpand {

 UserShortest? get owner; PostShortest? get postOwner;
/// Create a copy of SharePostExpand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SharePostExpandCopyWith<SharePostExpand> get copyWith => _$SharePostExpandCopyWithImpl<SharePostExpand>(this as SharePostExpand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SharePostExpand&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.postOwner, postOwner) || other.postOwner == postOwner));
}


@override
int get hashCode => Object.hash(runtimeType,owner,postOwner);

@override
String toString() {
  return 'SharePostExpand(owner: $owner, postOwner: $postOwner)';
}


}

/// @nodoc
abstract mixin class $SharePostExpandCopyWith<$Res>  {
  factory $SharePostExpandCopyWith(SharePostExpand value, $Res Function(SharePostExpand) _then) = _$SharePostExpandCopyWithImpl;
@useResult
$Res call({
 UserShortest? owner, PostShortest? postOwner
});


$UserShortestCopyWith<$Res>? get owner;$PostShortestCopyWith<$Res>? get postOwner;

}
/// @nodoc
class _$SharePostExpandCopyWithImpl<$Res>
    implements $SharePostExpandCopyWith<$Res> {
  _$SharePostExpandCopyWithImpl(this._self, this._then);

  final SharePostExpand _self;
  final $Res Function(SharePostExpand) _then;

/// Create a copy of SharePostExpand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? owner = freezed,Object? postOwner = freezed,}) {
  return _then(_self.copyWith(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserShortest?,postOwner: freezed == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as PostShortest?,
  ));
}
/// Create a copy of SharePostExpand
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
}/// Create a copy of SharePostExpand
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


class _SharePostExpand extends SharePostExpand {
  const _SharePostExpand({this.owner, this.postOwner}): super._();
  

@override final  UserShortest? owner;
@override final  PostShortest? postOwner;

/// Create a copy of SharePostExpand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SharePostExpandCopyWith<_SharePostExpand> get copyWith => __$SharePostExpandCopyWithImpl<_SharePostExpand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SharePostExpand&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.postOwner, postOwner) || other.postOwner == postOwner));
}


@override
int get hashCode => Object.hash(runtimeType,owner,postOwner);

@override
String toString() {
  return 'SharePostExpand(owner: $owner, postOwner: $postOwner)';
}


}

/// @nodoc
abstract mixin class _$SharePostExpandCopyWith<$Res> implements $SharePostExpandCopyWith<$Res> {
  factory _$SharePostExpandCopyWith(_SharePostExpand value, $Res Function(_SharePostExpand) _then) = __$SharePostExpandCopyWithImpl;
@override @useResult
$Res call({
 UserShortest? owner, PostShortest? postOwner
});


@override $UserShortestCopyWith<$Res>? get owner;@override $PostShortestCopyWith<$Res>? get postOwner;

}
/// @nodoc
class __$SharePostExpandCopyWithImpl<$Res>
    implements _$SharePostExpandCopyWith<$Res> {
  __$SharePostExpandCopyWithImpl(this._self, this._then);

  final _SharePostExpand _self;
  final $Res Function(_SharePostExpand) _then;

/// Create a copy of SharePostExpand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? owner = freezed,Object? postOwner = freezed,}) {
  return _then(_SharePostExpand(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserShortest?,postOwner: freezed == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as PostShortest?,
  ));
}

/// Create a copy of SharePostExpand
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
}/// Create a copy of SharePostExpand
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

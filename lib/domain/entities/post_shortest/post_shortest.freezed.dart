// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_shortest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostShortest {

 String get postId; List<String>? get mediaUrls; String get content; VisibilityEnum get visibility; TypePostEnum get type; String get owner; int get viewsCount; int get likesCount; int get commentsCount; int get sharesCount; List<String> get likes; List<String> get comments; List<String> get shares; DateTime get created; DateTime get updated; String get collectionId; String get collectionName; PostShortestOwnerExpand? get ownerExpand;
/// Create a copy of PostShortest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostShortestCopyWith<PostShortest> get copyWith => _$PostShortestCopyWithImpl<PostShortest>(this as PostShortest, _$identity);

  /// Serializes this PostShortest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostShortest&&(identical(other.postId, postId) || other.postId == postId)&&const DeepCollectionEquality().equals(other.mediaUrls, mediaUrls)&&(identical(other.content, content) || other.content == content)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.type, type) || other.type == type)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.viewsCount, viewsCount) || other.viewsCount == viewsCount)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.sharesCount, sharesCount) || other.sharesCount == sharesCount)&&const DeepCollectionEquality().equals(other.likes, likes)&&const DeepCollectionEquality().equals(other.comments, comments)&&const DeepCollectionEquality().equals(other.shares, shares)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.ownerExpand, ownerExpand) || other.ownerExpand == ownerExpand));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postId,const DeepCollectionEquality().hash(mediaUrls),content,visibility,type,owner,viewsCount,likesCount,commentsCount,sharesCount,const DeepCollectionEquality().hash(likes),const DeepCollectionEquality().hash(comments),const DeepCollectionEquality().hash(shares),created,updated,collectionId,collectionName,ownerExpand);

@override
String toString() {
  return 'PostShortest(postId: $postId, mediaUrls: $mediaUrls, content: $content, visibility: $visibility, type: $type, owner: $owner, viewsCount: $viewsCount, likesCount: $likesCount, commentsCount: $commentsCount, sharesCount: $sharesCount, likes: $likes, comments: $comments, shares: $shares, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, ownerExpand: $ownerExpand)';
}


}

/// @nodoc
abstract mixin class $PostShortestCopyWith<$Res>  {
  factory $PostShortestCopyWith(PostShortest value, $Res Function(PostShortest) _then) = _$PostShortestCopyWithImpl;
@useResult
$Res call({
 String postId, List<String>? mediaUrls, String content, VisibilityEnum visibility, TypePostEnum type, String owner, int viewsCount, int likesCount, int commentsCount, int sharesCount, List<String> likes, List<String> comments, List<String> shares, DateTime created, DateTime updated, String collectionId, String collectionName, PostShortestOwnerExpand? ownerExpand
});


$PostShortestOwnerExpandCopyWith<$Res>? get ownerExpand;

}
/// @nodoc
class _$PostShortestCopyWithImpl<$Res>
    implements $PostShortestCopyWith<$Res> {
  _$PostShortestCopyWithImpl(this._self, this._then);

  final PostShortest _self;
  final $Res Function(PostShortest) _then;

/// Create a copy of PostShortest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postId = null,Object? mediaUrls = freezed,Object? content = null,Object? visibility = null,Object? type = null,Object? owner = null,Object? viewsCount = null,Object? likesCount = null,Object? commentsCount = null,Object? sharesCount = null,Object? likes = null,Object? comments = null,Object? shares = null,Object? created = null,Object? updated = null,Object? collectionId = null,Object? collectionName = null,Object? ownerExpand = freezed,}) {
  return _then(_self.copyWith(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,mediaUrls: freezed == mediaUrls ? _self.mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as VisibilityEnum,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypePostEnum,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,viewsCount: null == viewsCount ? _self.viewsCount : viewsCount // ignore: cast_nullable_to_non_nullable
as int,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,commentsCount: null == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int,sharesCount: null == sharesCount ? _self.sharesCount : sharesCount // ignore: cast_nullable_to_non_nullable
as int,likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as List<String>,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<String>,shares: null == shares ? _self.shares : shares // ignore: cast_nullable_to_non_nullable
as List<String>,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,ownerExpand: freezed == ownerExpand ? _self.ownerExpand : ownerExpand // ignore: cast_nullable_to_non_nullable
as PostShortestOwnerExpand?,
  ));
}
/// Create a copy of PostShortest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostShortestOwnerExpandCopyWith<$Res>? get ownerExpand {
    if (_self.ownerExpand == null) {
    return null;
  }

  return $PostShortestOwnerExpandCopyWith<$Res>(_self.ownerExpand!, (value) {
    return _then(_self.copyWith(ownerExpand: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PostShortest extends PostShortest {
  const _PostShortest({required this.postId, final  List<String>? mediaUrls, required this.content, required this.visibility, required this.type, required this.owner, required this.viewsCount, required this.likesCount, required this.commentsCount, required this.sharesCount, required final  List<String> likes, required final  List<String> comments, required final  List<String> shares, required this.created, required this.updated, required this.collectionId, required this.collectionName, this.ownerExpand}): _mediaUrls = mediaUrls,_likes = likes,_comments = comments,_shares = shares,super._();
  factory _PostShortest.fromJson(Map<String, dynamic> json) => _$PostShortestFromJson(json);

@override final  String postId;
 final  List<String>? _mediaUrls;
@override List<String>? get mediaUrls {
  final value = _mediaUrls;
  if (value == null) return null;
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String content;
@override final  VisibilityEnum visibility;
@override final  TypePostEnum type;
@override final  String owner;
@override final  int viewsCount;
@override final  int likesCount;
@override final  int commentsCount;
@override final  int sharesCount;
 final  List<String> _likes;
@override List<String> get likes {
  if (_likes is EqualUnmodifiableListView) return _likes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_likes);
}

 final  List<String> _comments;
@override List<String> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

 final  List<String> _shares;
@override List<String> get shares {
  if (_shares is EqualUnmodifiableListView) return _shares;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_shares);
}

@override final  DateTime created;
@override final  DateTime updated;
@override final  String collectionId;
@override final  String collectionName;
@override final  PostShortestOwnerExpand? ownerExpand;

/// Create a copy of PostShortest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostShortestCopyWith<_PostShortest> get copyWith => __$PostShortestCopyWithImpl<_PostShortest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostShortestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostShortest&&(identical(other.postId, postId) || other.postId == postId)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&(identical(other.content, content) || other.content == content)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.type, type) || other.type == type)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.viewsCount, viewsCount) || other.viewsCount == viewsCount)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.commentsCount, commentsCount) || other.commentsCount == commentsCount)&&(identical(other.sharesCount, sharesCount) || other.sharesCount == sharesCount)&&const DeepCollectionEquality().equals(other._likes, _likes)&&const DeepCollectionEquality().equals(other._comments, _comments)&&const DeepCollectionEquality().equals(other._shares, _shares)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.ownerExpand, ownerExpand) || other.ownerExpand == ownerExpand));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postId,const DeepCollectionEquality().hash(_mediaUrls),content,visibility,type,owner,viewsCount,likesCount,commentsCount,sharesCount,const DeepCollectionEquality().hash(_likes),const DeepCollectionEquality().hash(_comments),const DeepCollectionEquality().hash(_shares),created,updated,collectionId,collectionName,ownerExpand);

@override
String toString() {
  return 'PostShortest(postId: $postId, mediaUrls: $mediaUrls, content: $content, visibility: $visibility, type: $type, owner: $owner, viewsCount: $viewsCount, likesCount: $likesCount, commentsCount: $commentsCount, sharesCount: $sharesCount, likes: $likes, comments: $comments, shares: $shares, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, ownerExpand: $ownerExpand)';
}


}

/// @nodoc
abstract mixin class _$PostShortestCopyWith<$Res> implements $PostShortestCopyWith<$Res> {
  factory _$PostShortestCopyWith(_PostShortest value, $Res Function(_PostShortest) _then) = __$PostShortestCopyWithImpl;
@override @useResult
$Res call({
 String postId, List<String>? mediaUrls, String content, VisibilityEnum visibility, TypePostEnum type, String owner, int viewsCount, int likesCount, int commentsCount, int sharesCount, List<String> likes, List<String> comments, List<String> shares, DateTime created, DateTime updated, String collectionId, String collectionName, PostShortestOwnerExpand? ownerExpand
});


@override $PostShortestOwnerExpandCopyWith<$Res>? get ownerExpand;

}
/// @nodoc
class __$PostShortestCopyWithImpl<$Res>
    implements _$PostShortestCopyWith<$Res> {
  __$PostShortestCopyWithImpl(this._self, this._then);

  final _PostShortest _self;
  final $Res Function(_PostShortest) _then;

/// Create a copy of PostShortest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? mediaUrls = freezed,Object? content = null,Object? visibility = null,Object? type = null,Object? owner = null,Object? viewsCount = null,Object? likesCount = null,Object? commentsCount = null,Object? sharesCount = null,Object? likes = null,Object? comments = null,Object? shares = null,Object? created = null,Object? updated = null,Object? collectionId = null,Object? collectionName = null,Object? ownerExpand = freezed,}) {
  return _then(_PostShortest(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,mediaUrls: freezed == mediaUrls ? _self._mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as VisibilityEnum,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypePostEnum,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,viewsCount: null == viewsCount ? _self.viewsCount : viewsCount // ignore: cast_nullable_to_non_nullable
as int,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,commentsCount: null == commentsCount ? _self.commentsCount : commentsCount // ignore: cast_nullable_to_non_nullable
as int,sharesCount: null == sharesCount ? _self.sharesCount : sharesCount // ignore: cast_nullable_to_non_nullable
as int,likes: null == likes ? _self._likes : likes // ignore: cast_nullable_to_non_nullable
as List<String>,comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<String>,shares: null == shares ? _self._shares : shares // ignore: cast_nullable_to_non_nullable
as List<String>,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,ownerExpand: freezed == ownerExpand ? _self.ownerExpand : ownerExpand // ignore: cast_nullable_to_non_nullable
as PostShortestOwnerExpand?,
  ));
}

/// Create a copy of PostShortest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostShortestOwnerExpandCopyWith<$Res>? get ownerExpand {
    if (_self.ownerExpand == null) {
    return null;
  }

  return $PostShortestOwnerExpandCopyWith<$Res>(_self.ownerExpand!, (value) {
    return _then(_self.copyWith(ownerExpand: value));
  });
}
}


/// @nodoc
mixin _$PostShortestOwnerExpand {

 UserShortest? get owner;
/// Create a copy of PostShortestOwnerExpand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostShortestOwnerExpandCopyWith<PostShortestOwnerExpand> get copyWith => _$PostShortestOwnerExpandCopyWithImpl<PostShortestOwnerExpand>(this as PostShortestOwnerExpand, _$identity);

  /// Serializes this PostShortestOwnerExpand to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostShortestOwnerExpand&&(identical(other.owner, owner) || other.owner == owner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,owner);

@override
String toString() {
  return 'PostShortestOwnerExpand(owner: $owner)';
}


}

/// @nodoc
abstract mixin class $PostShortestOwnerExpandCopyWith<$Res>  {
  factory $PostShortestOwnerExpandCopyWith(PostShortestOwnerExpand value, $Res Function(PostShortestOwnerExpand) _then) = _$PostShortestOwnerExpandCopyWithImpl;
@useResult
$Res call({
 UserShortest? owner
});


$UserShortestCopyWith<$Res>? get owner;

}
/// @nodoc
class _$PostShortestOwnerExpandCopyWithImpl<$Res>
    implements $PostShortestOwnerExpandCopyWith<$Res> {
  _$PostShortestOwnerExpandCopyWithImpl(this._self, this._then);

  final PostShortestOwnerExpand _self;
  final $Res Function(PostShortestOwnerExpand) _then;

/// Create a copy of PostShortestOwnerExpand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? owner = freezed,}) {
  return _then(_self.copyWith(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserShortest?,
  ));
}
/// Create a copy of PostShortestOwnerExpand
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
}
}


/// @nodoc
@JsonSerializable()

class _PostShortestOwnerExpand extends PostShortestOwnerExpand {
  const _PostShortestOwnerExpand({this.owner}): super._();
  factory _PostShortestOwnerExpand.fromJson(Map<String, dynamic> json) => _$PostShortestOwnerExpandFromJson(json);

@override final  UserShortest? owner;

/// Create a copy of PostShortestOwnerExpand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostShortestOwnerExpandCopyWith<_PostShortestOwnerExpand> get copyWith => __$PostShortestOwnerExpandCopyWithImpl<_PostShortestOwnerExpand>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostShortestOwnerExpandToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostShortestOwnerExpand&&(identical(other.owner, owner) || other.owner == owner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,owner);

@override
String toString() {
  return 'PostShortestOwnerExpand(owner: $owner)';
}


}

/// @nodoc
abstract mixin class _$PostShortestOwnerExpandCopyWith<$Res> implements $PostShortestOwnerExpandCopyWith<$Res> {
  factory _$PostShortestOwnerExpandCopyWith(_PostShortestOwnerExpand value, $Res Function(_PostShortestOwnerExpand) _then) = __$PostShortestOwnerExpandCopyWithImpl;
@override @useResult
$Res call({
 UserShortest? owner
});


@override $UserShortestCopyWith<$Res>? get owner;

}
/// @nodoc
class __$PostShortestOwnerExpandCopyWithImpl<$Res>
    implements _$PostShortestOwnerExpandCopyWith<$Res> {
  __$PostShortestOwnerExpandCopyWithImpl(this._self, this._then);

  final _PostShortestOwnerExpand _self;
  final $Res Function(_PostShortestOwnerExpand) _then;

/// Create a copy of PostShortestOwnerExpand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? owner = freezed,}) {
  return _then(_PostShortestOwnerExpand(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserShortest?,
  ));
}

/// Create a copy of PostShortestOwnerExpand
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
}
}

// dart format on

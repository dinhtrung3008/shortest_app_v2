// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommentPost {

 String get commentPostId; String get content; String get owner; List<String>? get mediaUrls; String get postOwner; DateTime get created; DateTime get updated; String get collectionId; String get collectionName; CommentPostExpand? get expand;
/// Create a copy of CommentPost
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentPostCopyWith<CommentPost> get copyWith => _$CommentPostCopyWithImpl<CommentPost>(this as CommentPost, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentPost&&(identical(other.commentPostId, commentPostId) || other.commentPostId == commentPostId)&&(identical(other.content, content) || other.content == content)&&(identical(other.owner, owner) || other.owner == owner)&&const DeepCollectionEquality().equals(other.mediaUrls, mediaUrls)&&(identical(other.postOwner, postOwner) || other.postOwner == postOwner)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.expand, expand) || other.expand == expand));
}


@override
int get hashCode => Object.hash(runtimeType,commentPostId,content,owner,const DeepCollectionEquality().hash(mediaUrls),postOwner,created,updated,collectionId,collectionName,expand);

@override
String toString() {
  return 'CommentPost(commentPostId: $commentPostId, content: $content, owner: $owner, mediaUrls: $mediaUrls, postOwner: $postOwner, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, expand: $expand)';
}


}

/// @nodoc
abstract mixin class $CommentPostCopyWith<$Res>  {
  factory $CommentPostCopyWith(CommentPost value, $Res Function(CommentPost) _then) = _$CommentPostCopyWithImpl;
@useResult
$Res call({
 String commentPostId, String content, String owner, List<String>? mediaUrls, String postOwner, DateTime created, DateTime updated, String collectionId, String collectionName, CommentPostExpand? expand
});


$CommentPostExpandCopyWith<$Res>? get expand;

}
/// @nodoc
class _$CommentPostCopyWithImpl<$Res>
    implements $CommentPostCopyWith<$Res> {
  _$CommentPostCopyWithImpl(this._self, this._then);

  final CommentPost _self;
  final $Res Function(CommentPost) _then;

/// Create a copy of CommentPost
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? commentPostId = null,Object? content = null,Object? owner = null,Object? mediaUrls = freezed,Object? postOwner = null,Object? created = null,Object? updated = null,Object? collectionId = null,Object? collectionName = null,Object? expand = freezed,}) {
  return _then(_self.copyWith(
commentPostId: null == commentPostId ? _self.commentPostId : commentPostId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,mediaUrls: freezed == mediaUrls ? _self.mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,postOwner: null == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,expand: freezed == expand ? _self.expand : expand // ignore: cast_nullable_to_non_nullable
as CommentPostExpand?,
  ));
}
/// Create a copy of CommentPost
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentPostExpandCopyWith<$Res>? get expand {
    if (_self.expand == null) {
    return null;
  }

  return $CommentPostExpandCopyWith<$Res>(_self.expand!, (value) {
    return _then(_self.copyWith(expand: value));
  });
}
}


/// @nodoc


class _CommentPost extends CommentPost {
  const _CommentPost({required this.commentPostId, required this.content, required this.owner, final  List<String>? mediaUrls, required this.postOwner, required this.created, required this.updated, required this.collectionId, required this.collectionName, this.expand}): _mediaUrls = mediaUrls,super._();
  

@override final  String commentPostId;
@override final  String content;
@override final  String owner;
 final  List<String>? _mediaUrls;
@override List<String>? get mediaUrls {
  final value = _mediaUrls;
  if (value == null) return null;
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String postOwner;
@override final  DateTime created;
@override final  DateTime updated;
@override final  String collectionId;
@override final  String collectionName;
@override final  CommentPostExpand? expand;

/// Create a copy of CommentPost
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentPostCopyWith<_CommentPost> get copyWith => __$CommentPostCopyWithImpl<_CommentPost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentPost&&(identical(other.commentPostId, commentPostId) || other.commentPostId == commentPostId)&&(identical(other.content, content) || other.content == content)&&(identical(other.owner, owner) || other.owner == owner)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&(identical(other.postOwner, postOwner) || other.postOwner == postOwner)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.expand, expand) || other.expand == expand));
}


@override
int get hashCode => Object.hash(runtimeType,commentPostId,content,owner,const DeepCollectionEquality().hash(_mediaUrls),postOwner,created,updated,collectionId,collectionName,expand);

@override
String toString() {
  return 'CommentPost(commentPostId: $commentPostId, content: $content, owner: $owner, mediaUrls: $mediaUrls, postOwner: $postOwner, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, expand: $expand)';
}


}

/// @nodoc
abstract mixin class _$CommentPostCopyWith<$Res> implements $CommentPostCopyWith<$Res> {
  factory _$CommentPostCopyWith(_CommentPost value, $Res Function(_CommentPost) _then) = __$CommentPostCopyWithImpl;
@override @useResult
$Res call({
 String commentPostId, String content, String owner, List<String>? mediaUrls, String postOwner, DateTime created, DateTime updated, String collectionId, String collectionName, CommentPostExpand? expand
});


@override $CommentPostExpandCopyWith<$Res>? get expand;

}
/// @nodoc
class __$CommentPostCopyWithImpl<$Res>
    implements _$CommentPostCopyWith<$Res> {
  __$CommentPostCopyWithImpl(this._self, this._then);

  final _CommentPost _self;
  final $Res Function(_CommentPost) _then;

/// Create a copy of CommentPost
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? commentPostId = null,Object? content = null,Object? owner = null,Object? mediaUrls = freezed,Object? postOwner = null,Object? created = null,Object? updated = null,Object? collectionId = null,Object? collectionName = null,Object? expand = freezed,}) {
  return _then(_CommentPost(
commentPostId: null == commentPostId ? _self.commentPostId : commentPostId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,mediaUrls: freezed == mediaUrls ? _self._mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,postOwner: null == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,expand: freezed == expand ? _self.expand : expand // ignore: cast_nullable_to_non_nullable
as CommentPostExpand?,
  ));
}

/// Create a copy of CommentPost
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentPostExpandCopyWith<$Res>? get expand {
    if (_self.expand == null) {
    return null;
  }

  return $CommentPostExpandCopyWith<$Res>(_self.expand!, (value) {
    return _then(_self.copyWith(expand: value));
  });
}
}

/// @nodoc
mixin _$CommentPostExpand {

 UserShortest? get owner; PostShortest? get postOwner;
/// Create a copy of CommentPostExpand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentPostExpandCopyWith<CommentPostExpand> get copyWith => _$CommentPostExpandCopyWithImpl<CommentPostExpand>(this as CommentPostExpand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentPostExpand&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.postOwner, postOwner) || other.postOwner == postOwner));
}


@override
int get hashCode => Object.hash(runtimeType,owner,postOwner);

@override
String toString() {
  return 'CommentPostExpand(owner: $owner, postOwner: $postOwner)';
}


}

/// @nodoc
abstract mixin class $CommentPostExpandCopyWith<$Res>  {
  factory $CommentPostExpandCopyWith(CommentPostExpand value, $Res Function(CommentPostExpand) _then) = _$CommentPostExpandCopyWithImpl;
@useResult
$Res call({
 UserShortest? owner, PostShortest? postOwner
});


$UserShortestCopyWith<$Res>? get owner;$PostShortestCopyWith<$Res>? get postOwner;

}
/// @nodoc
class _$CommentPostExpandCopyWithImpl<$Res>
    implements $CommentPostExpandCopyWith<$Res> {
  _$CommentPostExpandCopyWithImpl(this._self, this._then);

  final CommentPostExpand _self;
  final $Res Function(CommentPostExpand) _then;

/// Create a copy of CommentPostExpand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? owner = freezed,Object? postOwner = freezed,}) {
  return _then(_self.copyWith(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserShortest?,postOwner: freezed == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as PostShortest?,
  ));
}
/// Create a copy of CommentPostExpand
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
}/// Create a copy of CommentPostExpand
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


class _CommentPostExpand extends CommentPostExpand {
  const _CommentPostExpand({this.owner, this.postOwner}): super._();
  

@override final  UserShortest? owner;
@override final  PostShortest? postOwner;

/// Create a copy of CommentPostExpand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentPostExpandCopyWith<_CommentPostExpand> get copyWith => __$CommentPostExpandCopyWithImpl<_CommentPostExpand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentPostExpand&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.postOwner, postOwner) || other.postOwner == postOwner));
}


@override
int get hashCode => Object.hash(runtimeType,owner,postOwner);

@override
String toString() {
  return 'CommentPostExpand(owner: $owner, postOwner: $postOwner)';
}


}

/// @nodoc
abstract mixin class _$CommentPostExpandCopyWith<$Res> implements $CommentPostExpandCopyWith<$Res> {
  factory _$CommentPostExpandCopyWith(_CommentPostExpand value, $Res Function(_CommentPostExpand) _then) = __$CommentPostExpandCopyWithImpl;
@override @useResult
$Res call({
 UserShortest? owner, PostShortest? postOwner
});


@override $UserShortestCopyWith<$Res>? get owner;@override $PostShortestCopyWith<$Res>? get postOwner;

}
/// @nodoc
class __$CommentPostExpandCopyWithImpl<$Res>
    implements _$CommentPostExpandCopyWith<$Res> {
  __$CommentPostExpandCopyWithImpl(this._self, this._then);

  final _CommentPostExpand _self;
  final $Res Function(_CommentPostExpand) _then;

/// Create a copy of CommentPostExpand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? owner = freezed,Object? postOwner = freezed,}) {
  return _then(_CommentPostExpand(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserShortest?,postOwner: freezed == postOwner ? _self.postOwner : postOwner // ignore: cast_nullable_to_non_nullable
as PostShortest?,
  ));
}

/// Create a copy of CommentPostExpand
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
}/// Create a copy of CommentPostExpand
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

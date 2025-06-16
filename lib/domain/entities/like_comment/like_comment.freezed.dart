// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LikeComment {

 String get likeCommentId; String get owner; String get commentOwner; String get collectionId; String get collectionName; DateTime get created; DateTime get updated; LikeCommentExpand? get expand;
/// Create a copy of LikeComment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeCommentCopyWith<LikeComment> get copyWith => _$LikeCommentCopyWithImpl<LikeComment>(this as LikeComment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeComment&&(identical(other.likeCommentId, likeCommentId) || other.likeCommentId == likeCommentId)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.commentOwner, commentOwner) || other.commentOwner == commentOwner)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.expand, expand) || other.expand == expand));
}


@override
int get hashCode => Object.hash(runtimeType,likeCommentId,owner,commentOwner,collectionId,collectionName,created,updated,expand);

@override
String toString() {
  return 'LikeComment(likeCommentId: $likeCommentId, owner: $owner, commentOwner: $commentOwner, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, expand: $expand)';
}


}

/// @nodoc
abstract mixin class $LikeCommentCopyWith<$Res>  {
  factory $LikeCommentCopyWith(LikeComment value, $Res Function(LikeComment) _then) = _$LikeCommentCopyWithImpl;
@useResult
$Res call({
 String likeCommentId, String owner, String commentOwner, String collectionId, String collectionName, DateTime created, DateTime updated, LikeCommentExpand? expand
});


$LikeCommentExpandCopyWith<$Res>? get expand;

}
/// @nodoc
class _$LikeCommentCopyWithImpl<$Res>
    implements $LikeCommentCopyWith<$Res> {
  _$LikeCommentCopyWithImpl(this._self, this._then);

  final LikeComment _self;
  final $Res Function(LikeComment) _then;

/// Create a copy of LikeComment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? likeCommentId = null,Object? owner = null,Object? commentOwner = null,Object? collectionId = null,Object? collectionName = null,Object? created = null,Object? updated = null,Object? expand = freezed,}) {
  return _then(_self.copyWith(
likeCommentId: null == likeCommentId ? _self.likeCommentId : likeCommentId // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,commentOwner: null == commentOwner ? _self.commentOwner : commentOwner // ignore: cast_nullable_to_non_nullable
as String,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,expand: freezed == expand ? _self.expand : expand // ignore: cast_nullable_to_non_nullable
as LikeCommentExpand?,
  ));
}
/// Create a copy of LikeComment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LikeCommentExpandCopyWith<$Res>? get expand {
    if (_self.expand == null) {
    return null;
  }

  return $LikeCommentExpandCopyWith<$Res>(_self.expand!, (value) {
    return _then(_self.copyWith(expand: value));
  });
}
}


/// @nodoc


class _LikeComment extends LikeComment {
  const _LikeComment({required this.likeCommentId, required this.owner, required this.commentOwner, required this.collectionId, required this.collectionName, required this.created, required this.updated, this.expand}): super._();
  

@override final  String likeCommentId;
@override final  String owner;
@override final  String commentOwner;
@override final  String collectionId;
@override final  String collectionName;
@override final  DateTime created;
@override final  DateTime updated;
@override final  LikeCommentExpand? expand;

/// Create a copy of LikeComment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikeCommentCopyWith<_LikeComment> get copyWith => __$LikeCommentCopyWithImpl<_LikeComment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikeComment&&(identical(other.likeCommentId, likeCommentId) || other.likeCommentId == likeCommentId)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.commentOwner, commentOwner) || other.commentOwner == commentOwner)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.expand, expand) || other.expand == expand));
}


@override
int get hashCode => Object.hash(runtimeType,likeCommentId,owner,commentOwner,collectionId,collectionName,created,updated,expand);

@override
String toString() {
  return 'LikeComment(likeCommentId: $likeCommentId, owner: $owner, commentOwner: $commentOwner, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, expand: $expand)';
}


}

/// @nodoc
abstract mixin class _$LikeCommentCopyWith<$Res> implements $LikeCommentCopyWith<$Res> {
  factory _$LikeCommentCopyWith(_LikeComment value, $Res Function(_LikeComment) _then) = __$LikeCommentCopyWithImpl;
@override @useResult
$Res call({
 String likeCommentId, String owner, String commentOwner, String collectionId, String collectionName, DateTime created, DateTime updated, LikeCommentExpand? expand
});


@override $LikeCommentExpandCopyWith<$Res>? get expand;

}
/// @nodoc
class __$LikeCommentCopyWithImpl<$Res>
    implements _$LikeCommentCopyWith<$Res> {
  __$LikeCommentCopyWithImpl(this._self, this._then);

  final _LikeComment _self;
  final $Res Function(_LikeComment) _then;

/// Create a copy of LikeComment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? likeCommentId = null,Object? owner = null,Object? commentOwner = null,Object? collectionId = null,Object? collectionName = null,Object? created = null,Object? updated = null,Object? expand = freezed,}) {
  return _then(_LikeComment(
likeCommentId: null == likeCommentId ? _self.likeCommentId : likeCommentId // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,commentOwner: null == commentOwner ? _self.commentOwner : commentOwner // ignore: cast_nullable_to_non_nullable
as String,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,expand: freezed == expand ? _self.expand : expand // ignore: cast_nullable_to_non_nullable
as LikeCommentExpand?,
  ));
}

/// Create a copy of LikeComment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LikeCommentExpandCopyWith<$Res>? get expand {
    if (_self.expand == null) {
    return null;
  }

  return $LikeCommentExpandCopyWith<$Res>(_self.expand!, (value) {
    return _then(_self.copyWith(expand: value));
  });
}
}

/// @nodoc
mixin _$LikeCommentExpand {

 UserShortest? get owner; CommentPost? get commentOwner;
/// Create a copy of LikeCommentExpand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeCommentExpandCopyWith<LikeCommentExpand> get copyWith => _$LikeCommentExpandCopyWithImpl<LikeCommentExpand>(this as LikeCommentExpand, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeCommentExpand&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.commentOwner, commentOwner) || other.commentOwner == commentOwner));
}


@override
int get hashCode => Object.hash(runtimeType,owner,commentOwner);

@override
String toString() {
  return 'LikeCommentExpand(owner: $owner, commentOwner: $commentOwner)';
}


}

/// @nodoc
abstract mixin class $LikeCommentExpandCopyWith<$Res>  {
  factory $LikeCommentExpandCopyWith(LikeCommentExpand value, $Res Function(LikeCommentExpand) _then) = _$LikeCommentExpandCopyWithImpl;
@useResult
$Res call({
 UserShortest? owner, CommentPost? commentOwner
});


$UserShortestCopyWith<$Res>? get owner;$CommentPostCopyWith<$Res>? get commentOwner;

}
/// @nodoc
class _$LikeCommentExpandCopyWithImpl<$Res>
    implements $LikeCommentExpandCopyWith<$Res> {
  _$LikeCommentExpandCopyWithImpl(this._self, this._then);

  final LikeCommentExpand _self;
  final $Res Function(LikeCommentExpand) _then;

/// Create a copy of LikeCommentExpand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? owner = freezed,Object? commentOwner = freezed,}) {
  return _then(_self.copyWith(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserShortest?,commentOwner: freezed == commentOwner ? _self.commentOwner : commentOwner // ignore: cast_nullable_to_non_nullable
as CommentPost?,
  ));
}
/// Create a copy of LikeCommentExpand
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
}/// Create a copy of LikeCommentExpand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentPostCopyWith<$Res>? get commentOwner {
    if (_self.commentOwner == null) {
    return null;
  }

  return $CommentPostCopyWith<$Res>(_self.commentOwner!, (value) {
    return _then(_self.copyWith(commentOwner: value));
  });
}
}


/// @nodoc


class _LikeCommentExpand extends LikeCommentExpand {
  const _LikeCommentExpand({this.owner, this.commentOwner}): super._();
  

@override final  UserShortest? owner;
@override final  CommentPost? commentOwner;

/// Create a copy of LikeCommentExpand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikeCommentExpandCopyWith<_LikeCommentExpand> get copyWith => __$LikeCommentExpandCopyWithImpl<_LikeCommentExpand>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikeCommentExpand&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.commentOwner, commentOwner) || other.commentOwner == commentOwner));
}


@override
int get hashCode => Object.hash(runtimeType,owner,commentOwner);

@override
String toString() {
  return 'LikeCommentExpand(owner: $owner, commentOwner: $commentOwner)';
}


}

/// @nodoc
abstract mixin class _$LikeCommentExpandCopyWith<$Res> implements $LikeCommentExpandCopyWith<$Res> {
  factory _$LikeCommentExpandCopyWith(_LikeCommentExpand value, $Res Function(_LikeCommentExpand) _then) = __$LikeCommentExpandCopyWithImpl;
@override @useResult
$Res call({
 UserShortest? owner, CommentPost? commentOwner
});


@override $UserShortestCopyWith<$Res>? get owner;@override $CommentPostCopyWith<$Res>? get commentOwner;

}
/// @nodoc
class __$LikeCommentExpandCopyWithImpl<$Res>
    implements _$LikeCommentExpandCopyWith<$Res> {
  __$LikeCommentExpandCopyWithImpl(this._self, this._then);

  final _LikeCommentExpand _self;
  final $Res Function(_LikeCommentExpand) _then;

/// Create a copy of LikeCommentExpand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? owner = freezed,Object? commentOwner = freezed,}) {
  return _then(_LikeCommentExpand(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserShortest?,commentOwner: freezed == commentOwner ? _self.commentOwner : commentOwner // ignore: cast_nullable_to_non_nullable
as CommentPost?,
  ));
}

/// Create a copy of LikeCommentExpand
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
}/// Create a copy of LikeCommentExpand
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentPostCopyWith<$Res>? get commentOwner {
    if (_self.commentOwner == null) {
    return null;
  }

  return $CommentPostCopyWith<$Res>(_self.commentOwner!, (value) {
    return _then(_self.copyWith(commentOwner: value));
  });
}
}

// dart format on

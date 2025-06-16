// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Message {

 String get id; String get chatId; String get sendById; String get type; String get content; String get collectionId; String get collectionName; String get sendingTime; MessageExpandSendById? get expand; DateTime get created; DateTime get updated; bool get isLiked;
/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageCopyWith<Message> get copyWith => _$MessageCopyWithImpl<Message>(this as Message, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Message&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.sendById, sendById) || other.sendById == sendById)&&(identical(other.type, type) || other.type == type)&&(identical(other.content, content) || other.content == content)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.sendingTime, sendingTime) || other.sendingTime == sendingTime)&&(identical(other.expand, expand) || other.expand == expand)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked));
}


@override
int get hashCode => Object.hash(runtimeType,id,chatId,sendById,type,content,collectionId,collectionName,sendingTime,expand,created,updated,isLiked);

@override
String toString() {
  return 'Message(id: $id, chatId: $chatId, sendById: $sendById, type: $type, content: $content, collectionId: $collectionId, collectionName: $collectionName, sendingTime: $sendingTime, expand: $expand, created: $created, updated: $updated, isLiked: $isLiked)';
}


}

/// @nodoc
abstract mixin class $MessageCopyWith<$Res>  {
  factory $MessageCopyWith(Message value, $Res Function(Message) _then) = _$MessageCopyWithImpl;
@useResult
$Res call({
 String id, String chatId, String sendById, String type, String content, String collectionId, String collectionName, String sendingTime, MessageExpandSendById? expand, DateTime created, DateTime updated, bool isLiked
});


$MessageExpandSendByIdCopyWith<$Res>? get expand;

}
/// @nodoc
class _$MessageCopyWithImpl<$Res>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._self, this._then);

  final Message _self;
  final $Res Function(Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? chatId = null,Object? sendById = null,Object? type = null,Object? content = null,Object? collectionId = null,Object? collectionName = null,Object? sendingTime = null,Object? expand = freezed,Object? created = null,Object? updated = null,Object? isLiked = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,sendById: null == sendById ? _self.sendById : sendById // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,sendingTime: null == sendingTime ? _self.sendingTime : sendingTime // ignore: cast_nullable_to_non_nullable
as String,expand: freezed == expand ? _self.expand : expand // ignore: cast_nullable_to_non_nullable
as MessageExpandSendById?,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageExpandSendByIdCopyWith<$Res>? get expand {
    if (_self.expand == null) {
    return null;
  }

  return $MessageExpandSendByIdCopyWith<$Res>(_self.expand!, (value) {
    return _then(_self.copyWith(expand: value));
  });
}
}


/// @nodoc


class _Message extends Message {
  const _Message({required this.id, required this.chatId, required this.sendById, required this.type, required this.content, required this.collectionId, required this.collectionName, required this.sendingTime, this.expand, required this.created, required this.updated, this.isLiked = false}): super._();
  

@override final  String id;
@override final  String chatId;
@override final  String sendById;
@override final  String type;
@override final  String content;
@override final  String collectionId;
@override final  String collectionName;
@override final  String sendingTime;
@override final  MessageExpandSendById? expand;
@override final  DateTime created;
@override final  DateTime updated;
@override@JsonKey() final  bool isLiked;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageCopyWith<_Message> get copyWith => __$MessageCopyWithImpl<_Message>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Message&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.sendById, sendById) || other.sendById == sendById)&&(identical(other.type, type) || other.type == type)&&(identical(other.content, content) || other.content == content)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.sendingTime, sendingTime) || other.sendingTime == sendingTime)&&(identical(other.expand, expand) || other.expand == expand)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked));
}


@override
int get hashCode => Object.hash(runtimeType,id,chatId,sendById,type,content,collectionId,collectionName,sendingTime,expand,created,updated,isLiked);

@override
String toString() {
  return 'Message(id: $id, chatId: $chatId, sendById: $sendById, type: $type, content: $content, collectionId: $collectionId, collectionName: $collectionName, sendingTime: $sendingTime, expand: $expand, created: $created, updated: $updated, isLiked: $isLiked)';
}


}

/// @nodoc
abstract mixin class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) _then) = __$MessageCopyWithImpl;
@override @useResult
$Res call({
 String id, String chatId, String sendById, String type, String content, String collectionId, String collectionName, String sendingTime, MessageExpandSendById? expand, DateTime created, DateTime updated, bool isLiked
});


@override $MessageExpandSendByIdCopyWith<$Res>? get expand;

}
/// @nodoc
class __$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(this._self, this._then);

  final _Message _self;
  final $Res Function(_Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chatId = null,Object? sendById = null,Object? type = null,Object? content = null,Object? collectionId = null,Object? collectionName = null,Object? sendingTime = null,Object? expand = freezed,Object? created = null,Object? updated = null,Object? isLiked = null,}) {
  return _then(_Message(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,sendById: null == sendById ? _self.sendById : sendById // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,sendingTime: null == sendingTime ? _self.sendingTime : sendingTime // ignore: cast_nullable_to_non_nullable
as String,expand: freezed == expand ? _self.expand : expand // ignore: cast_nullable_to_non_nullable
as MessageExpandSendById?,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageExpandSendByIdCopyWith<$Res>? get expand {
    if (_self.expand == null) {
    return null;
  }

  return $MessageExpandSendByIdCopyWith<$Res>(_self.expand!, (value) {
    return _then(_self.copyWith(expand: value));
  });
}
}

/// @nodoc
mixin _$MessageExpandSendById {

 UserShortest? get sendById;
/// Create a copy of MessageExpandSendById
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageExpandSendByIdCopyWith<MessageExpandSendById> get copyWith => _$MessageExpandSendByIdCopyWithImpl<MessageExpandSendById>(this as MessageExpandSendById, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageExpandSendById&&(identical(other.sendById, sendById) || other.sendById == sendById));
}


@override
int get hashCode => Object.hash(runtimeType,sendById);

@override
String toString() {
  return 'MessageExpandSendById(sendById: $sendById)';
}


}

/// @nodoc
abstract mixin class $MessageExpandSendByIdCopyWith<$Res>  {
  factory $MessageExpandSendByIdCopyWith(MessageExpandSendById value, $Res Function(MessageExpandSendById) _then) = _$MessageExpandSendByIdCopyWithImpl;
@useResult
$Res call({
 UserShortest? sendById
});


$UserShortestCopyWith<$Res>? get sendById;

}
/// @nodoc
class _$MessageExpandSendByIdCopyWithImpl<$Res>
    implements $MessageExpandSendByIdCopyWith<$Res> {
  _$MessageExpandSendByIdCopyWithImpl(this._self, this._then);

  final MessageExpandSendById _self;
  final $Res Function(MessageExpandSendById) _then;

/// Create a copy of MessageExpandSendById
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sendById = freezed,}) {
  return _then(_self.copyWith(
sendById: freezed == sendById ? _self.sendById : sendById // ignore: cast_nullable_to_non_nullable
as UserShortest?,
  ));
}
/// Create a copy of MessageExpandSendById
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserShortestCopyWith<$Res>? get sendById {
    if (_self.sendById == null) {
    return null;
  }

  return $UserShortestCopyWith<$Res>(_self.sendById!, (value) {
    return _then(_self.copyWith(sendById: value));
  });
}
}


/// @nodoc


class _MessageExpandSendById extends MessageExpandSendById {
  const _MessageExpandSendById({this.sendById}): super._();
  

@override final  UserShortest? sendById;

/// Create a copy of MessageExpandSendById
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageExpandSendByIdCopyWith<_MessageExpandSendById> get copyWith => __$MessageExpandSendByIdCopyWithImpl<_MessageExpandSendById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageExpandSendById&&(identical(other.sendById, sendById) || other.sendById == sendById));
}


@override
int get hashCode => Object.hash(runtimeType,sendById);

@override
String toString() {
  return 'MessageExpandSendById(sendById: $sendById)';
}


}

/// @nodoc
abstract mixin class _$MessageExpandSendByIdCopyWith<$Res> implements $MessageExpandSendByIdCopyWith<$Res> {
  factory _$MessageExpandSendByIdCopyWith(_MessageExpandSendById value, $Res Function(_MessageExpandSendById) _then) = __$MessageExpandSendByIdCopyWithImpl;
@override @useResult
$Res call({
 UserShortest? sendById
});


@override $UserShortestCopyWith<$Res>? get sendById;

}
/// @nodoc
class __$MessageExpandSendByIdCopyWithImpl<$Res>
    implements _$MessageExpandSendByIdCopyWith<$Res> {
  __$MessageExpandSendByIdCopyWithImpl(this._self, this._then);

  final _MessageExpandSendById _self;
  final $Res Function(_MessageExpandSendById) _then;

/// Create a copy of MessageExpandSendById
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sendById = freezed,}) {
  return _then(_MessageExpandSendById(
sendById: freezed == sendById ? _self.sendById : sendById // ignore: cast_nullable_to_non_nullable
as UserShortest?,
  ));
}

/// Create a copy of MessageExpandSendById
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserShortestCopyWith<$Res>? get sendById {
    if (_self.sendById == null) {
    return null;
  }

  return $UserShortestCopyWith<$Res>(_self.sendById!, (value) {
    return _then(_self.copyWith(sendById: value));
  });
}
}

// dart format on

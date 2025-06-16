// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Chat {

 String get id; String get lastSenderId; List<String> get users; String get lastMessage; LastMessages get lastMessages; DateTime get created; DateTime get updated; String get collectionId; String get collectionName; ChatExpandUsersInChat? get expand; List<UsersInChat> get usersInChat;
/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCopyWith<Chat> get copyWith => _$ChatCopyWithImpl<Chat>(this as Chat, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Chat&&(identical(other.id, id) || other.id == id)&&(identical(other.lastSenderId, lastSenderId) || other.lastSenderId == lastSenderId)&&const DeepCollectionEquality().equals(other.users, users)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessages, lastMessages) || other.lastMessages == lastMessages)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.expand, expand) || other.expand == expand)&&const DeepCollectionEquality().equals(other.usersInChat, usersInChat));
}


@override
int get hashCode => Object.hash(runtimeType,id,lastSenderId,const DeepCollectionEquality().hash(users),lastMessage,lastMessages,created,updated,collectionId,collectionName,expand,const DeepCollectionEquality().hash(usersInChat));

@override
String toString() {
  return 'Chat(id: $id, lastSenderId: $lastSenderId, users: $users, lastMessage: $lastMessage, lastMessages: $lastMessages, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, expand: $expand, usersInChat: $usersInChat)';
}


}

/// @nodoc
abstract mixin class $ChatCopyWith<$Res>  {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) _then) = _$ChatCopyWithImpl;
@useResult
$Res call({
 String id, String lastSenderId, List<String> users, String lastMessage, LastMessages lastMessages, DateTime created, DateTime updated, String collectionId, String collectionName, ChatExpandUsersInChat? expand, List<UsersInChat> usersInChat
});


$LastMessagesCopyWith<$Res> get lastMessages;$ChatExpandUsersInChatCopyWith<$Res>? get expand;

}
/// @nodoc
class _$ChatCopyWithImpl<$Res>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._self, this._then);

  final Chat _self;
  final $Res Function(Chat) _then;

/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? lastSenderId = null,Object? users = null,Object? lastMessage = null,Object? lastMessages = null,Object? created = null,Object? updated = null,Object? collectionId = null,Object? collectionName = null,Object? expand = freezed,Object? usersInChat = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lastSenderId: null == lastSenderId ? _self.lastSenderId : lastSenderId // ignore: cast_nullable_to_non_nullable
as String,users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<String>,lastMessage: null == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String,lastMessages: null == lastMessages ? _self.lastMessages : lastMessages // ignore: cast_nullable_to_non_nullable
as LastMessages,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,expand: freezed == expand ? _self.expand : expand // ignore: cast_nullable_to_non_nullable
as ChatExpandUsersInChat?,usersInChat: null == usersInChat ? _self.usersInChat : usersInChat // ignore: cast_nullable_to_non_nullable
as List<UsersInChat>,
  ));
}
/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LastMessagesCopyWith<$Res> get lastMessages {
  
  return $LastMessagesCopyWith<$Res>(_self.lastMessages, (value) {
    return _then(_self.copyWith(lastMessages: value));
  });
}/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatExpandUsersInChatCopyWith<$Res>? get expand {
    if (_self.expand == null) {
    return null;
  }

  return $ChatExpandUsersInChatCopyWith<$Res>(_self.expand!, (value) {
    return _then(_self.copyWith(expand: value));
  });
}
}


/// @nodoc


class _Chat extends Chat {
  const _Chat({required this.id, required this.lastSenderId, required final  List<String> users, required this.lastMessage, required this.lastMessages, required this.created, required this.updated, required this.collectionId, required this.collectionName, this.expand, required final  List<UsersInChat> usersInChat}): _users = users,_usersInChat = usersInChat,super._();
  

@override final  String id;
@override final  String lastSenderId;
 final  List<String> _users;
@override List<String> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

@override final  String lastMessage;
@override final  LastMessages lastMessages;
@override final  DateTime created;
@override final  DateTime updated;
@override final  String collectionId;
@override final  String collectionName;
@override final  ChatExpandUsersInChat? expand;
 final  List<UsersInChat> _usersInChat;
@override List<UsersInChat> get usersInChat {
  if (_usersInChat is EqualUnmodifiableListView) return _usersInChat;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_usersInChat);
}


/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCopyWith<_Chat> get copyWith => __$ChatCopyWithImpl<_Chat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Chat&&(identical(other.id, id) || other.id == id)&&(identical(other.lastSenderId, lastSenderId) || other.lastSenderId == lastSenderId)&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessages, lastMessages) || other.lastMessages == lastMessages)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.expand, expand) || other.expand == expand)&&const DeepCollectionEquality().equals(other._usersInChat, _usersInChat));
}


@override
int get hashCode => Object.hash(runtimeType,id,lastSenderId,const DeepCollectionEquality().hash(_users),lastMessage,lastMessages,created,updated,collectionId,collectionName,expand,const DeepCollectionEquality().hash(_usersInChat));

@override
String toString() {
  return 'Chat(id: $id, lastSenderId: $lastSenderId, users: $users, lastMessage: $lastMessage, lastMessages: $lastMessages, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, expand: $expand, usersInChat: $usersInChat)';
}


}

/// @nodoc
abstract mixin class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) _then) = __$ChatCopyWithImpl;
@override @useResult
$Res call({
 String id, String lastSenderId, List<String> users, String lastMessage, LastMessages lastMessages, DateTime created, DateTime updated, String collectionId, String collectionName, ChatExpandUsersInChat? expand, List<UsersInChat> usersInChat
});


@override $LastMessagesCopyWith<$Res> get lastMessages;@override $ChatExpandUsersInChatCopyWith<$Res>? get expand;

}
/// @nodoc
class __$ChatCopyWithImpl<$Res>
    implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(this._self, this._then);

  final _Chat _self;
  final $Res Function(_Chat) _then;

/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? lastSenderId = null,Object? users = null,Object? lastMessage = null,Object? lastMessages = null,Object? created = null,Object? updated = null,Object? collectionId = null,Object? collectionName = null,Object? expand = freezed,Object? usersInChat = null,}) {
  return _then(_Chat(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lastSenderId: null == lastSenderId ? _self.lastSenderId : lastSenderId // ignore: cast_nullable_to_non_nullable
as String,users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<String>,lastMessage: null == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String,lastMessages: null == lastMessages ? _self.lastMessages : lastMessages // ignore: cast_nullable_to_non_nullable
as LastMessages,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,expand: freezed == expand ? _self.expand : expand // ignore: cast_nullable_to_non_nullable
as ChatExpandUsersInChat?,usersInChat: null == usersInChat ? _self._usersInChat : usersInChat // ignore: cast_nullable_to_non_nullable
as List<UsersInChat>,
  ));
}

/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LastMessagesCopyWith<$Res> get lastMessages {
  
  return $LastMessagesCopyWith<$Res>(_self.lastMessages, (value) {
    return _then(_self.copyWith(lastMessages: value));
  });
}/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatExpandUsersInChatCopyWith<$Res>? get expand {
    if (_self.expand == null) {
    return null;
  }

  return $ChatExpandUsersInChatCopyWith<$Res>(_self.expand!, (value) {
    return _then(_self.copyWith(expand: value));
  });
}
}

/// @nodoc
mixin _$ChatExpandUsersInChat {

 List<UserShortest>? get users;
/// Create a copy of ChatExpandUsersInChat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatExpandUsersInChatCopyWith<ChatExpandUsersInChat> get copyWith => _$ChatExpandUsersInChatCopyWithImpl<ChatExpandUsersInChat>(this as ChatExpandUsersInChat, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatExpandUsersInChat&&const DeepCollectionEquality().equals(other.users, users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users));

@override
String toString() {
  return 'ChatExpandUsersInChat(users: $users)';
}


}

/// @nodoc
abstract mixin class $ChatExpandUsersInChatCopyWith<$Res>  {
  factory $ChatExpandUsersInChatCopyWith(ChatExpandUsersInChat value, $Res Function(ChatExpandUsersInChat) _then) = _$ChatExpandUsersInChatCopyWithImpl;
@useResult
$Res call({
 List<UserShortest>? users
});




}
/// @nodoc
class _$ChatExpandUsersInChatCopyWithImpl<$Res>
    implements $ChatExpandUsersInChatCopyWith<$Res> {
  _$ChatExpandUsersInChatCopyWithImpl(this._self, this._then);

  final ChatExpandUsersInChat _self;
  final $Res Function(ChatExpandUsersInChat) _then;

/// Create a copy of ChatExpandUsersInChat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = freezed,}) {
  return _then(_self.copyWith(
users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserShortest>?,
  ));
}

}


/// @nodoc


class _ChatExpandUsersInChat extends ChatExpandUsersInChat {
  const _ChatExpandUsersInChat({final  List<UserShortest>? users}): _users = users,super._();
  

 final  List<UserShortest>? _users;
@override List<UserShortest>? get users {
  final value = _users;
  if (value == null) return null;
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ChatExpandUsersInChat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatExpandUsersInChatCopyWith<_ChatExpandUsersInChat> get copyWith => __$ChatExpandUsersInChatCopyWithImpl<_ChatExpandUsersInChat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatExpandUsersInChat&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'ChatExpandUsersInChat(users: $users)';
}


}

/// @nodoc
abstract mixin class _$ChatExpandUsersInChatCopyWith<$Res> implements $ChatExpandUsersInChatCopyWith<$Res> {
  factory _$ChatExpandUsersInChatCopyWith(_ChatExpandUsersInChat value, $Res Function(_ChatExpandUsersInChat) _then) = __$ChatExpandUsersInChatCopyWithImpl;
@override @useResult
$Res call({
 List<UserShortest>? users
});




}
/// @nodoc
class __$ChatExpandUsersInChatCopyWithImpl<$Res>
    implements _$ChatExpandUsersInChatCopyWith<$Res> {
  __$ChatExpandUsersInChatCopyWithImpl(this._self, this._then);

  final _ChatExpandUsersInChat _self;
  final $Res Function(_ChatExpandUsersInChat) _then;

/// Create a copy of ChatExpandUsersInChat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = freezed,}) {
  return _then(_ChatExpandUsersInChat(
users: freezed == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserShortest>?,
  ));
}


}

/// @nodoc
mixin _$LastMessages {

 String get sendByUserId; List<String> get messages;
/// Create a copy of LastMessages
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastMessagesCopyWith<LastMessages> get copyWith => _$LastMessagesCopyWithImpl<LastMessages>(this as LastMessages, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastMessages&&(identical(other.sendByUserId, sendByUserId) || other.sendByUserId == sendByUserId)&&const DeepCollectionEquality().equals(other.messages, messages));
}


@override
int get hashCode => Object.hash(runtimeType,sendByUserId,const DeepCollectionEquality().hash(messages));

@override
String toString() {
  return 'LastMessages(sendByUserId: $sendByUserId, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $LastMessagesCopyWith<$Res>  {
  factory $LastMessagesCopyWith(LastMessages value, $Res Function(LastMessages) _then) = _$LastMessagesCopyWithImpl;
@useResult
$Res call({
 String sendByUserId, List<String> messages
});




}
/// @nodoc
class _$LastMessagesCopyWithImpl<$Res>
    implements $LastMessagesCopyWith<$Res> {
  _$LastMessagesCopyWithImpl(this._self, this._then);

  final LastMessages _self;
  final $Res Function(LastMessages) _then;

/// Create a copy of LastMessages
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sendByUserId = null,Object? messages = null,}) {
  return _then(_self.copyWith(
sendByUserId: null == sendByUserId ? _self.sendByUserId : sendByUserId // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc


class _LastMessages extends LastMessages {
  const _LastMessages({required this.sendByUserId, required final  List<String> messages}): _messages = messages,super._();
  

@override final  String sendByUserId;
 final  List<String> _messages;
@override List<String> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of LastMessages
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastMessagesCopyWith<_LastMessages> get copyWith => __$LastMessagesCopyWithImpl<_LastMessages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastMessages&&(identical(other.sendByUserId, sendByUserId) || other.sendByUserId == sendByUserId)&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,sendByUserId,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'LastMessages(sendByUserId: $sendByUserId, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$LastMessagesCopyWith<$Res> implements $LastMessagesCopyWith<$Res> {
  factory _$LastMessagesCopyWith(_LastMessages value, $Res Function(_LastMessages) _then) = __$LastMessagesCopyWithImpl;
@override @useResult
$Res call({
 String sendByUserId, List<String> messages
});




}
/// @nodoc
class __$LastMessagesCopyWithImpl<$Res>
    implements _$LastMessagesCopyWith<$Res> {
  __$LastMessagesCopyWithImpl(this._self, this._then);

  final _LastMessages _self;
  final $Res Function(_LastMessages) _then;

/// Create a copy of LastMessages
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sendByUserId = null,Object? messages = null,}) {
  return _then(_LastMessages(
sendByUserId: null == sendByUserId ? _self.sendByUserId : sendByUserId // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$UsersInChat {

 String get userId; bool get isRead;
/// Create a copy of UsersInChat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsersInChatCopyWith<UsersInChat> get copyWith => _$UsersInChatCopyWithImpl<UsersInChat>(this as UsersInChat, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersInChat&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}


@override
int get hashCode => Object.hash(runtimeType,userId,isRead);

@override
String toString() {
  return 'UsersInChat(userId: $userId, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class $UsersInChatCopyWith<$Res>  {
  factory $UsersInChatCopyWith(UsersInChat value, $Res Function(UsersInChat) _then) = _$UsersInChatCopyWithImpl;
@useResult
$Res call({
 String userId, bool isRead
});




}
/// @nodoc
class _$UsersInChatCopyWithImpl<$Res>
    implements $UsersInChatCopyWith<$Res> {
  _$UsersInChatCopyWithImpl(this._self, this._then);

  final UsersInChat _self;
  final $Res Function(UsersInChat) _then;

/// Create a copy of UsersInChat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? isRead = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _UsersInChat implements UsersInChat {
  const _UsersInChat({required this.userId, required this.isRead});
  

@override final  String userId;
@override final  bool isRead;

/// Create a copy of UsersInChat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsersInChatCopyWith<_UsersInChat> get copyWith => __$UsersInChatCopyWithImpl<_UsersInChat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsersInChat&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}


@override
int get hashCode => Object.hash(runtimeType,userId,isRead);

@override
String toString() {
  return 'UsersInChat(userId: $userId, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class _$UsersInChatCopyWith<$Res> implements $UsersInChatCopyWith<$Res> {
  factory _$UsersInChatCopyWith(_UsersInChat value, $Res Function(_UsersInChat) _then) = __$UsersInChatCopyWithImpl;
@override @useResult
$Res call({
 String userId, bool isRead
});




}
/// @nodoc
class __$UsersInChatCopyWithImpl<$Res>
    implements _$UsersInChatCopyWith<$Res> {
  __$UsersInChatCopyWithImpl(this._self, this._then);

  final _UsersInChat _self;
  final $Res Function(_UsersInChat) _then;

/// Create a copy of UsersInChat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? isRead = null,}) {
  return _then(_UsersInChat(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

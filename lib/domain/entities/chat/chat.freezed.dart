// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
mixin _$Chat {
  String get id => throw _privateConstructorUsedError;
  String get lastSenderId => throw _privateConstructorUsedError;
  List<String> get users => throw _privateConstructorUsedError;
  String get lastMessage => throw _privateConstructorUsedError;
  LastMessages get lastMessages => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  String get collectionId => throw _privateConstructorUsedError;
  String get collectionName => throw _privateConstructorUsedError;
  ChatExpandUsersInChat? get expand => throw _privateConstructorUsedError;
  List<UsersInChat> get usersInChat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call(
      {String id,
      String lastSenderId,
      List<String> users,
      String lastMessage,
      LastMessages lastMessages,
      DateTime created,
      DateTime updated,
      String collectionId,
      String collectionName,
      ChatExpandUsersInChat? expand,
      List<UsersInChat> usersInChat});

  $LastMessagesCopyWith<$Res> get lastMessages;
  $ChatExpandUsersInChatCopyWith<$Res>? get expand;
}

/// @nodoc
class _$ChatCopyWithImpl<$Res, $Val extends Chat>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lastSenderId = null,
    Object? users = null,
    Object? lastMessage = null,
    Object? lastMessages = null,
    Object? created = null,
    Object? updated = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? expand = freezed,
    Object? usersInChat = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastSenderId: null == lastSenderId
          ? _value.lastSenderId
          : lastSenderId // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessages: null == lastMessages
          ? _value.lastMessages
          : lastMessages // ignore: cast_nullable_to_non_nullable
              as LastMessages,
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
              as ChatExpandUsersInChat?,
      usersInChat: null == usersInChat
          ? _value.usersInChat
          : usersInChat // ignore: cast_nullable_to_non_nullable
              as List<UsersInChat>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LastMessagesCopyWith<$Res> get lastMessages {
    return $LastMessagesCopyWith<$Res>(_value.lastMessages, (value) {
      return _then(_value.copyWith(lastMessages: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatExpandUsersInChatCopyWith<$Res>? get expand {
    if (_value.expand == null) {
      return null;
    }

    return $ChatExpandUsersInChatCopyWith<$Res>(_value.expand!, (value) {
      return _then(_value.copyWith(expand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatImplCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$ChatImplCopyWith(
          _$ChatImpl value, $Res Function(_$ChatImpl) then) =
      __$$ChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String lastSenderId,
      List<String> users,
      String lastMessage,
      LastMessages lastMessages,
      DateTime created,
      DateTime updated,
      String collectionId,
      String collectionName,
      ChatExpandUsersInChat? expand,
      List<UsersInChat> usersInChat});

  @override
  $LastMessagesCopyWith<$Res> get lastMessages;
  @override
  $ChatExpandUsersInChatCopyWith<$Res>? get expand;
}

/// @nodoc
class __$$ChatImplCopyWithImpl<$Res>
    extends _$ChatCopyWithImpl<$Res, _$ChatImpl>
    implements _$$ChatImplCopyWith<$Res> {
  __$$ChatImplCopyWithImpl(_$ChatImpl _value, $Res Function(_$ChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lastSenderId = null,
    Object? users = null,
    Object? lastMessage = null,
    Object? lastMessages = null,
    Object? created = null,
    Object? updated = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? expand = freezed,
    Object? usersInChat = null,
  }) {
    return _then(_$ChatImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastSenderId: null == lastSenderId
          ? _value.lastSenderId
          : lastSenderId // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessages: null == lastMessages
          ? _value.lastMessages
          : lastMessages // ignore: cast_nullable_to_non_nullable
              as LastMessages,
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
              as ChatExpandUsersInChat?,
      usersInChat: null == usersInChat
          ? _value._usersInChat
          : usersInChat // ignore: cast_nullable_to_non_nullable
              as List<UsersInChat>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatImpl extends _Chat {
  const _$ChatImpl(
      {required this.id,
      required this.lastSenderId,
      required final List<String> users,
      required this.lastMessage,
      required this.lastMessages,
      required this.created,
      required this.updated,
      required this.collectionId,
      required this.collectionName,
      this.expand,
      required final List<UsersInChat> usersInChat})
      : _users = users,
        _usersInChat = usersInChat,
        super._();

  factory _$ChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatImplFromJson(json);

  @override
  final String id;
  @override
  final String lastSenderId;
  final List<String> _users;
  @override
  List<String> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final String lastMessage;
  @override
  final LastMessages lastMessages;
  @override
  final DateTime created;
  @override
  final DateTime updated;
  @override
  final String collectionId;
  @override
  final String collectionName;
  @override
  final ChatExpandUsersInChat? expand;
  final List<UsersInChat> _usersInChat;
  @override
  List<UsersInChat> get usersInChat {
    if (_usersInChat is EqualUnmodifiableListView) return _usersInChat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersInChat);
  }

  @override
  String toString() {
    return 'Chat(id: $id, lastSenderId: $lastSenderId, users: $users, lastMessage: $lastMessage, lastMessages: $lastMessages, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, expand: $expand, usersInChat: $usersInChat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastSenderId, lastSenderId) ||
                other.lastSenderId == lastSenderId) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessages, lastMessages) ||
                other.lastMessages == lastMessages) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.expand, expand) || other.expand == expand) &&
            const DeepCollectionEquality()
                .equals(other._usersInChat, _usersInChat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      lastSenderId,
      const DeepCollectionEquality().hash(_users),
      lastMessage,
      lastMessages,
      created,
      updated,
      collectionId,
      collectionName,
      expand,
      const DeepCollectionEquality().hash(_usersInChat));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatImplCopyWith<_$ChatImpl> get copyWith =>
      __$$ChatImplCopyWithImpl<_$ChatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatImplToJson(
      this,
    );
  }
}

abstract class _Chat extends Chat {
  const factory _Chat(
      {required final String id,
      required final String lastSenderId,
      required final List<String> users,
      required final String lastMessage,
      required final LastMessages lastMessages,
      required final DateTime created,
      required final DateTime updated,
      required final String collectionId,
      required final String collectionName,
      final ChatExpandUsersInChat? expand,
      required final List<UsersInChat> usersInChat}) = _$ChatImpl;
  const _Chat._() : super._();

  factory _Chat.fromJson(Map<String, dynamic> json) = _$ChatImpl.fromJson;

  @override
  String get id;
  @override
  String get lastSenderId;
  @override
  List<String> get users;
  @override
  String get lastMessage;
  @override
  LastMessages get lastMessages;
  @override
  DateTime get created;
  @override
  DateTime get updated;
  @override
  String get collectionId;
  @override
  String get collectionName;
  @override
  ChatExpandUsersInChat? get expand;
  @override
  List<UsersInChat> get usersInChat;
  @override
  @JsonKey(ignore: true)
  _$$ChatImplCopyWith<_$ChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatExpandUsersInChat _$ChatExpandUsersInChatFromJson(
    Map<String, dynamic> json) {
  return _ChatExpandUsersInChat.fromJson(json);
}

/// @nodoc
mixin _$ChatExpandUsersInChat {
  List<UserShortest>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatExpandUsersInChatCopyWith<ChatExpandUsersInChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatExpandUsersInChatCopyWith<$Res> {
  factory $ChatExpandUsersInChatCopyWith(ChatExpandUsersInChat value,
          $Res Function(ChatExpandUsersInChat) then) =
      _$ChatExpandUsersInChatCopyWithImpl<$Res, ChatExpandUsersInChat>;
  @useResult
  $Res call({List<UserShortest>? users});
}

/// @nodoc
class _$ChatExpandUsersInChatCopyWithImpl<$Res,
        $Val extends ChatExpandUsersInChat>
    implements $ChatExpandUsersInChatCopyWith<$Res> {
  _$ChatExpandUsersInChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserShortest>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatExpandUsersInChatImplCopyWith<$Res>
    implements $ChatExpandUsersInChatCopyWith<$Res> {
  factory _$$ChatExpandUsersInChatImplCopyWith(
          _$ChatExpandUsersInChatImpl value,
          $Res Function(_$ChatExpandUsersInChatImpl) then) =
      __$$ChatExpandUsersInChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserShortest>? users});
}

/// @nodoc
class __$$ChatExpandUsersInChatImplCopyWithImpl<$Res>
    extends _$ChatExpandUsersInChatCopyWithImpl<$Res,
        _$ChatExpandUsersInChatImpl>
    implements _$$ChatExpandUsersInChatImplCopyWith<$Res> {
  __$$ChatExpandUsersInChatImplCopyWithImpl(_$ChatExpandUsersInChatImpl _value,
      $Res Function(_$ChatExpandUsersInChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$ChatExpandUsersInChatImpl(
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserShortest>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatExpandUsersInChatImpl extends _ChatExpandUsersInChat {
  const _$ChatExpandUsersInChatImpl({final List<UserShortest>? users})
      : _users = users,
        super._();

  factory _$ChatExpandUsersInChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatExpandUsersInChatImplFromJson(json);

  final List<UserShortest>? _users;
  @override
  List<UserShortest>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatExpandUsersInChat(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatExpandUsersInChatImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatExpandUsersInChatImplCopyWith<_$ChatExpandUsersInChatImpl>
      get copyWith => __$$ChatExpandUsersInChatImplCopyWithImpl<
          _$ChatExpandUsersInChatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatExpandUsersInChatImplToJson(
      this,
    );
  }
}

abstract class _ChatExpandUsersInChat extends ChatExpandUsersInChat {
  const factory _ChatExpandUsersInChat({final List<UserShortest>? users}) =
      _$ChatExpandUsersInChatImpl;
  const _ChatExpandUsersInChat._() : super._();

  factory _ChatExpandUsersInChat.fromJson(Map<String, dynamic> json) =
      _$ChatExpandUsersInChatImpl.fromJson;

  @override
  List<UserShortest>? get users;
  @override
  @JsonKey(ignore: true)
  _$$ChatExpandUsersInChatImplCopyWith<_$ChatExpandUsersInChatImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LastMessages _$LastMessagesFromJson(Map<String, dynamic> json) {
  return _LastMessages.fromJson(json);
}

/// @nodoc
mixin _$LastMessages {
  String get sendByUserId => throw _privateConstructorUsedError;
  List<String> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastMessagesCopyWith<LastMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastMessagesCopyWith<$Res> {
  factory $LastMessagesCopyWith(
          LastMessages value, $Res Function(LastMessages) then) =
      _$LastMessagesCopyWithImpl<$Res, LastMessages>;
  @useResult
  $Res call({String sendByUserId, List<String> messages});
}

/// @nodoc
class _$LastMessagesCopyWithImpl<$Res, $Val extends LastMessages>
    implements $LastMessagesCopyWith<$Res> {
  _$LastMessagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendByUserId = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      sendByUserId: null == sendByUserId
          ? _value.sendByUserId
          : sendByUserId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LastMessagesImplCopyWith<$Res>
    implements $LastMessagesCopyWith<$Res> {
  factory _$$LastMessagesImplCopyWith(
          _$LastMessagesImpl value, $Res Function(_$LastMessagesImpl) then) =
      __$$LastMessagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sendByUserId, List<String> messages});
}

/// @nodoc
class __$$LastMessagesImplCopyWithImpl<$Res>
    extends _$LastMessagesCopyWithImpl<$Res, _$LastMessagesImpl>
    implements _$$LastMessagesImplCopyWith<$Res> {
  __$$LastMessagesImplCopyWithImpl(
      _$LastMessagesImpl _value, $Res Function(_$LastMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendByUserId = null,
    Object? messages = null,
  }) {
    return _then(_$LastMessagesImpl(
      sendByUserId: null == sendByUserId
          ? _value.sendByUserId
          : sendByUserId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LastMessagesImpl extends _LastMessages {
  const _$LastMessagesImpl(
      {required this.sendByUserId, required final List<String> messages})
      : _messages = messages,
        super._();

  factory _$LastMessagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastMessagesImplFromJson(json);

  @override
  final String sendByUserId;
  final List<String> _messages;
  @override
  List<String> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'LastMessages(sendByUserId: $sendByUserId, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastMessagesImpl &&
            (identical(other.sendByUserId, sendByUserId) ||
                other.sendByUserId == sendByUserId) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sendByUserId,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastMessagesImplCopyWith<_$LastMessagesImpl> get copyWith =>
      __$$LastMessagesImplCopyWithImpl<_$LastMessagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastMessagesImplToJson(
      this,
    );
  }
}

abstract class _LastMessages extends LastMessages {
  const factory _LastMessages(
      {required final String sendByUserId,
      required final List<String> messages}) = _$LastMessagesImpl;
  const _LastMessages._() : super._();

  factory _LastMessages.fromJson(Map<String, dynamic> json) =
      _$LastMessagesImpl.fromJson;

  @override
  String get sendByUserId;
  @override
  List<String> get messages;
  @override
  @JsonKey(ignore: true)
  _$$LastMessagesImplCopyWith<_$LastMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UsersInChat _$UsersInChatFromJson(Map<String, dynamic> json) {
  return _UsersInChat.fromJson(json);
}

/// @nodoc
mixin _$UsersInChat {
  String get userId => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersInChatCopyWith<UsersInChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersInChatCopyWith<$Res> {
  factory $UsersInChatCopyWith(
          UsersInChat value, $Res Function(UsersInChat) then) =
      _$UsersInChatCopyWithImpl<$Res, UsersInChat>;
  @useResult
  $Res call({String userId, bool isRead});
}

/// @nodoc
class _$UsersInChatCopyWithImpl<$Res, $Val extends UsersInChat>
    implements $UsersInChatCopyWith<$Res> {
  _$UsersInChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? isRead = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersInChatImplCopyWith<$Res>
    implements $UsersInChatCopyWith<$Res> {
  factory _$$UsersInChatImplCopyWith(
          _$UsersInChatImpl value, $Res Function(_$UsersInChatImpl) then) =
      __$$UsersInChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, bool isRead});
}

/// @nodoc
class __$$UsersInChatImplCopyWithImpl<$Res>
    extends _$UsersInChatCopyWithImpl<$Res, _$UsersInChatImpl>
    implements _$$UsersInChatImplCopyWith<$Res> {
  __$$UsersInChatImplCopyWithImpl(
      _$UsersInChatImpl _value, $Res Function(_$UsersInChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? isRead = null,
  }) {
    return _then(_$UsersInChatImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersInChatImpl extends _UsersInChat {
  const _$UsersInChatImpl({required this.userId, required this.isRead})
      : super._();

  factory _$UsersInChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersInChatImplFromJson(json);

  @override
  final String userId;
  @override
  final bool isRead;

  @override
  String toString() {
    return 'UsersInChat(userId: $userId, isRead: $isRead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersInChatImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isRead, isRead) || other.isRead == isRead));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, isRead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersInChatImplCopyWith<_$UsersInChatImpl> get copyWith =>
      __$$UsersInChatImplCopyWithImpl<_$UsersInChatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersInChatImplToJson(
      this,
    );
  }
}

abstract class _UsersInChat extends UsersInChat {
  const factory _UsersInChat(
      {required final String userId,
      required final bool isRead}) = _$UsersInChatImpl;
  const _UsersInChat._() : super._();

  factory _UsersInChat.fromJson(Map<String, dynamic> json) =
      _$UsersInChatImpl.fromJson;

  @override
  String get userId;
  @override
  bool get isRead;
  @override
  @JsonKey(ignore: true)
  _$$UsersInChatImplCopyWith<_$UsersInChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String get id => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  String get sendById => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get collectionId => throw _privateConstructorUsedError;
  String get collectionName => throw _privateConstructorUsedError;
  String get sendingTime => throw _privateConstructorUsedError;
  MessageExpandSendById? get expand => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {String id,
      String chatId,
      String sendById,
      String type,
      String content,
      String collectionId,
      String collectionName,
      String sendingTime,
      MessageExpandSendById? expand,
      DateTime created,
      DateTime updated,
      bool isLiked});

  $MessageExpandSendByIdCopyWith<$Res>? get expand;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? sendById = null,
    Object? type = null,
    Object? content = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? sendingTime = null,
    Object? expand = freezed,
    Object? created = null,
    Object? updated = null,
    Object? isLiked = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      sendById: null == sendById
          ? _value.sendById
          : sendById // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      sendingTime: null == sendingTime
          ? _value.sendingTime
          : sendingTime // ignore: cast_nullable_to_non_nullable
              as String,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as MessageExpandSendById?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageExpandSendByIdCopyWith<$Res>? get expand {
    if (_value.expand == null) {
      return null;
    }

    return $MessageExpandSendByIdCopyWith<$Res>(_value.expand!, (value) {
      return _then(_value.copyWith(expand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String chatId,
      String sendById,
      String type,
      String content,
      String collectionId,
      String collectionName,
      String sendingTime,
      MessageExpandSendById? expand,
      DateTime created,
      DateTime updated,
      bool isLiked});

  @override
  $MessageExpandSendByIdCopyWith<$Res>? get expand;
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? sendById = null,
    Object? type = null,
    Object? content = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? sendingTime = null,
    Object? expand = freezed,
    Object? created = null,
    Object? updated = null,
    Object? isLiked = null,
  }) {
    return _then(_$MessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      sendById: null == sendById
          ? _value.sendById
          : sendById // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      sendingTime: null == sendingTime
          ? _value.sendingTime
          : sendingTime // ignore: cast_nullable_to_non_nullable
              as String,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as MessageExpandSendById?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl extends _Message {
  const _$MessageImpl(
      {required this.id,
      required this.chatId,
      required this.sendById,
      required this.type,
      required this.content,
      required this.collectionId,
      required this.collectionName,
      required this.sendingTime,
      this.expand,
      required this.created,
      required this.updated,
      this.isLiked = false})
      : super._();

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final String id;
  @override
  final String chatId;
  @override
  final String sendById;
  @override
  final String type;
  @override
  final String content;
  @override
  final String collectionId;
  @override
  final String collectionName;
  @override
  final String sendingTime;
  @override
  final MessageExpandSendById? expand;
  @override
  final DateTime created;
  @override
  final DateTime updated;
  @override
  @JsonKey()
  final bool isLiked;

  @override
  String toString() {
    return 'Message(id: $id, chatId: $chatId, sendById: $sendById, type: $type, content: $content, collectionId: $collectionId, collectionName: $collectionName, sendingTime: $sendingTime, expand: $expand, created: $created, updated: $updated, isLiked: $isLiked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.sendById, sendById) ||
                other.sendById == sendById) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.sendingTime, sendingTime) ||
                other.sendingTime == sendingTime) &&
            (identical(other.expand, expand) || other.expand == expand) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      chatId,
      sendById,
      type,
      content,
      collectionId,
      collectionName,
      sendingTime,
      expand,
      created,
      updated,
      isLiked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message extends Message {
  const factory _Message(
      {required final String id,
      required final String chatId,
      required final String sendById,
      required final String type,
      required final String content,
      required final String collectionId,
      required final String collectionName,
      required final String sendingTime,
      final MessageExpandSendById? expand,
      required final DateTime created,
      required final DateTime updated,
      final bool isLiked}) = _$MessageImpl;
  const _Message._() : super._();

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  String get id;
  @override
  String get chatId;
  @override
  String get sendById;
  @override
  String get type;
  @override
  String get content;
  @override
  String get collectionId;
  @override
  String get collectionName;
  @override
  String get sendingTime;
  @override
  MessageExpandSendById? get expand;
  @override
  DateTime get created;
  @override
  DateTime get updated;
  @override
  bool get isLiked;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageExpandSendById _$MessageExpandSendByIdFromJson(
    Map<String, dynamic> json) {
  return _MessageExpandSendById.fromJson(json);
}

/// @nodoc
mixin _$MessageExpandSendById {
  UserShortest? get sendById => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageExpandSendByIdCopyWith<MessageExpandSendById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageExpandSendByIdCopyWith<$Res> {
  factory $MessageExpandSendByIdCopyWith(MessageExpandSendById value,
          $Res Function(MessageExpandSendById) then) =
      _$MessageExpandSendByIdCopyWithImpl<$Res, MessageExpandSendById>;
  @useResult
  $Res call({UserShortest? sendById});

  $UserShortestCopyWith<$Res>? get sendById;
}

/// @nodoc
class _$MessageExpandSendByIdCopyWithImpl<$Res,
        $Val extends MessageExpandSendById>
    implements $MessageExpandSendByIdCopyWith<$Res> {
  _$MessageExpandSendByIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendById = freezed,
  }) {
    return _then(_value.copyWith(
      sendById: freezed == sendById
          ? _value.sendById
          : sendById // ignore: cast_nullable_to_non_nullable
              as UserShortest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserShortestCopyWith<$Res>? get sendById {
    if (_value.sendById == null) {
      return null;
    }

    return $UserShortestCopyWith<$Res>(_value.sendById!, (value) {
      return _then(_value.copyWith(sendById: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageExpandSendByIdImplCopyWith<$Res>
    implements $MessageExpandSendByIdCopyWith<$Res> {
  factory _$$MessageExpandSendByIdImplCopyWith(
          _$MessageExpandSendByIdImpl value,
          $Res Function(_$MessageExpandSendByIdImpl) then) =
      __$$MessageExpandSendByIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserShortest? sendById});

  @override
  $UserShortestCopyWith<$Res>? get sendById;
}

/// @nodoc
class __$$MessageExpandSendByIdImplCopyWithImpl<$Res>
    extends _$MessageExpandSendByIdCopyWithImpl<$Res,
        _$MessageExpandSendByIdImpl>
    implements _$$MessageExpandSendByIdImplCopyWith<$Res> {
  __$$MessageExpandSendByIdImplCopyWithImpl(_$MessageExpandSendByIdImpl _value,
      $Res Function(_$MessageExpandSendByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendById = freezed,
  }) {
    return _then(_$MessageExpandSendByIdImpl(
      sendById: freezed == sendById
          ? _value.sendById
          : sendById // ignore: cast_nullable_to_non_nullable
              as UserShortest?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageExpandSendByIdImpl extends _MessageExpandSendById {
  const _$MessageExpandSendByIdImpl({this.sendById}) : super._();

  factory _$MessageExpandSendByIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageExpandSendByIdImplFromJson(json);

  @override
  final UserShortest? sendById;

  @override
  String toString() {
    return 'MessageExpandSendById(sendById: $sendById)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageExpandSendByIdImpl &&
            (identical(other.sendById, sendById) ||
                other.sendById == sendById));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sendById);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageExpandSendByIdImplCopyWith<_$MessageExpandSendByIdImpl>
      get copyWith => __$$MessageExpandSendByIdImplCopyWithImpl<
          _$MessageExpandSendByIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageExpandSendByIdImplToJson(
      this,
    );
  }
}

abstract class _MessageExpandSendById extends MessageExpandSendById {
  const factory _MessageExpandSendById({final UserShortest? sendById}) =
      _$MessageExpandSendByIdImpl;
  const _MessageExpandSendById._() : super._();

  factory _MessageExpandSendById.fromJson(Map<String, dynamic> json) =
      _$MessageExpandSendByIdImpl.fromJson;

  @override
  UserShortest? get sendById;
  @override
  @JsonKey(ignore: true)
  _$$MessageExpandSendByIdImplCopyWith<_$MessageExpandSendByIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

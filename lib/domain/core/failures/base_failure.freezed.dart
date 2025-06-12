// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BaseFailure {

 ErrorCode get code;
/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseFailureCopyWith<BaseFailure> get copyWith => _$BaseFailureCopyWithImpl<BaseFailure>(this as BaseFailure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseFailure&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,code);

@override
String toString() {
  return 'BaseFailure(code: $code)';
}


}

/// @nodoc
abstract mixin class $BaseFailureCopyWith<$Res>  {
  factory $BaseFailureCopyWith(BaseFailure value, $Res Function(BaseFailure) _then) = _$BaseFailureCopyWithImpl;
@useResult
$Res call({
 ErrorCode code
});




}
/// @nodoc
class _$BaseFailureCopyWithImpl<$Res>
    implements $BaseFailureCopyWith<$Res> {
  _$BaseFailureCopyWithImpl(this._self, this._then);

  final BaseFailure _self;
  final $Res Function(BaseFailure) _then;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as ErrorCode,
  ));
}

}


/// @nodoc


class SessionExpired implements BaseFailure {
  const SessionExpired({this.message, this.code = ErrorCode.sessionExpired});
  

 final  String? message;
@override@JsonKey() final  ErrorCode code;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionExpiredCopyWith<SessionExpired> get copyWith => _$SessionExpiredCopyWithImpl<SessionExpired>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionExpired&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'BaseFailure.sessionExpired(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $SessionExpiredCopyWith<$Res> implements $BaseFailureCopyWith<$Res> {
  factory $SessionExpiredCopyWith(SessionExpired value, $Res Function(SessionExpired) _then) = _$SessionExpiredCopyWithImpl;
@override @useResult
$Res call({
 String? message, ErrorCode code
});




}
/// @nodoc
class _$SessionExpiredCopyWithImpl<$Res>
    implements $SessionExpiredCopyWith<$Res> {
  _$SessionExpiredCopyWithImpl(this._self, this._then);

  final SessionExpired _self;
  final $Res Function(SessionExpired) _then;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? code = null,}) {
  return _then(SessionExpired(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as ErrorCode,
  ));
}


}

/// @nodoc


class FromServerException implements BaseFailure {
  const FromServerException({this.serverMessage, this.code = ErrorCode.serverError});
  

 final  String? serverMessage;
@override@JsonKey() final  ErrorCode code;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FromServerExceptionCopyWith<FromServerException> get copyWith => _$FromServerExceptionCopyWithImpl<FromServerException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FromServerException&&(identical(other.serverMessage, serverMessage) || other.serverMessage == serverMessage)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,serverMessage,code);

@override
String toString() {
  return 'BaseFailure.fromServerException(serverMessage: $serverMessage, code: $code)';
}


}

/// @nodoc
abstract mixin class $FromServerExceptionCopyWith<$Res> implements $BaseFailureCopyWith<$Res> {
  factory $FromServerExceptionCopyWith(FromServerException value, $Res Function(FromServerException) _then) = _$FromServerExceptionCopyWithImpl;
@override @useResult
$Res call({
 String? serverMessage, ErrorCode code
});




}
/// @nodoc
class _$FromServerExceptionCopyWithImpl<$Res>
    implements $FromServerExceptionCopyWith<$Res> {
  _$FromServerExceptionCopyWithImpl(this._self, this._then);

  final FromServerException _self;
  final $Res Function(FromServerException) _then;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serverMessage = freezed,Object? code = null,}) {
  return _then(FromServerException(
serverMessage: freezed == serverMessage ? _self.serverMessage : serverMessage // ignore: cast_nullable_to_non_nullable
as String?,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as ErrorCode,
  ));
}


}

/// @nodoc


class FromCacheException implements BaseFailure {
  const FromCacheException({this.cacheMessage, this.code = ErrorCode.cacheError});
  

 final  String? cacheMessage;
@override@JsonKey() final  ErrorCode code;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FromCacheExceptionCopyWith<FromCacheException> get copyWith => _$FromCacheExceptionCopyWithImpl<FromCacheException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FromCacheException&&(identical(other.cacheMessage, cacheMessage) || other.cacheMessage == cacheMessage)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,cacheMessage,code);

@override
String toString() {
  return 'BaseFailure.fromCacheException(cacheMessage: $cacheMessage, code: $code)';
}


}

/// @nodoc
abstract mixin class $FromCacheExceptionCopyWith<$Res> implements $BaseFailureCopyWith<$Res> {
  factory $FromCacheExceptionCopyWith(FromCacheException value, $Res Function(FromCacheException) _then) = _$FromCacheExceptionCopyWithImpl;
@override @useResult
$Res call({
 String? cacheMessage, ErrorCode code
});




}
/// @nodoc
class _$FromCacheExceptionCopyWithImpl<$Res>
    implements $FromCacheExceptionCopyWith<$Res> {
  _$FromCacheExceptionCopyWithImpl(this._self, this._then);

  final FromCacheException _self;
  final $Res Function(FromCacheException) _then;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cacheMessage = freezed,Object? code = null,}) {
  return _then(FromCacheException(
cacheMessage: freezed == cacheMessage ? _self.cacheMessage : cacheMessage // ignore: cast_nullable_to_non_nullable
as String?,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as ErrorCode,
  ));
}


}

/// @nodoc


class Offline implements BaseFailure {
  const Offline({this.message, this.code = ErrorCode.noConnection});
  

 final  String? message;
@override@JsonKey() final  ErrorCode code;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfflineCopyWith<Offline> get copyWith => _$OfflineCopyWithImpl<Offline>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Offline&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'BaseFailure.offline(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $OfflineCopyWith<$Res> implements $BaseFailureCopyWith<$Res> {
  factory $OfflineCopyWith(Offline value, $Res Function(Offline) _then) = _$OfflineCopyWithImpl;
@override @useResult
$Res call({
 String? message, ErrorCode code
});




}
/// @nodoc
class _$OfflineCopyWithImpl<$Res>
    implements $OfflineCopyWith<$Res> {
  _$OfflineCopyWithImpl(this._self, this._then);

  final Offline _self;
  final $Res Function(Offline) _then;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? code = null,}) {
  return _then(Offline(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as ErrorCode,
  ));
}


}

/// @nodoc


class Unexpected implements BaseFailure {
  const Unexpected({this.message, this.code = ErrorCode.unexpected});
  

 final  String? message;
@override@JsonKey() final  ErrorCode code;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnexpectedCopyWith<Unexpected> get copyWith => _$UnexpectedCopyWithImpl<Unexpected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unexpected&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'BaseFailure.unexpected(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $UnexpectedCopyWith<$Res> implements $BaseFailureCopyWith<$Res> {
  factory $UnexpectedCopyWith(Unexpected value, $Res Function(Unexpected) _then) = _$UnexpectedCopyWithImpl;
@override @useResult
$Res call({
 String? message, ErrorCode code
});




}
/// @nodoc
class _$UnexpectedCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(this._self, this._then);

  final Unexpected _self;
  final $Res Function(Unexpected) _then;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? code = null,}) {
  return _then(Unexpected(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as ErrorCode,
  ));
}


}

// dart format on

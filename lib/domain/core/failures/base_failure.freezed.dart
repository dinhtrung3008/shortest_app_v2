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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseFailure()';
}


}

/// @nodoc
class $BaseFailureCopyWith<$Res>  {
$BaseFailureCopyWith(BaseFailure _, $Res Function(BaseFailure) __);
}


/// @nodoc


class _SessionExpired implements BaseFailure {
  const _SessionExpired();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionExpired);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseFailure.sessionExpired()';
}


}




/// @nodoc


class _FromServerException implements BaseFailure {
  const _FromServerException({this.serverMessage});
  

 final  String? serverMessage;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FromServerExceptionCopyWith<_FromServerException> get copyWith => __$FromServerExceptionCopyWithImpl<_FromServerException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FromServerException&&(identical(other.serverMessage, serverMessage) || other.serverMessage == serverMessage));
}


@override
int get hashCode => Object.hash(runtimeType,serverMessage);

@override
String toString() {
  return 'BaseFailure.fromServerException(serverMessage: $serverMessage)';
}


}

/// @nodoc
abstract mixin class _$FromServerExceptionCopyWith<$Res> implements $BaseFailureCopyWith<$Res> {
  factory _$FromServerExceptionCopyWith(_FromServerException value, $Res Function(_FromServerException) _then) = __$FromServerExceptionCopyWithImpl;
@useResult
$Res call({
 String? serverMessage
});




}
/// @nodoc
class __$FromServerExceptionCopyWithImpl<$Res>
    implements _$FromServerExceptionCopyWith<$Res> {
  __$FromServerExceptionCopyWithImpl(this._self, this._then);

  final _FromServerException _self;
  final $Res Function(_FromServerException) _then;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serverMessage = freezed,}) {
  return _then(_FromServerException(
serverMessage: freezed == serverMessage ? _self.serverMessage : serverMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _FromCacheException implements BaseFailure {
  const _FromCacheException({this.cacheMessage});
  

 final  String? cacheMessage;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FromCacheExceptionCopyWith<_FromCacheException> get copyWith => __$FromCacheExceptionCopyWithImpl<_FromCacheException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FromCacheException&&(identical(other.cacheMessage, cacheMessage) || other.cacheMessage == cacheMessage));
}


@override
int get hashCode => Object.hash(runtimeType,cacheMessage);

@override
String toString() {
  return 'BaseFailure.fromCacheException(cacheMessage: $cacheMessage)';
}


}

/// @nodoc
abstract mixin class _$FromCacheExceptionCopyWith<$Res> implements $BaseFailureCopyWith<$Res> {
  factory _$FromCacheExceptionCopyWith(_FromCacheException value, $Res Function(_FromCacheException) _then) = __$FromCacheExceptionCopyWithImpl;
@useResult
$Res call({
 String? cacheMessage
});




}
/// @nodoc
class __$FromCacheExceptionCopyWithImpl<$Res>
    implements _$FromCacheExceptionCopyWith<$Res> {
  __$FromCacheExceptionCopyWithImpl(this._self, this._then);

  final _FromCacheException _self;
  final $Res Function(_FromCacheException) _then;

/// Create a copy of BaseFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cacheMessage = freezed,}) {
  return _then(_FromCacheException(
cacheMessage: freezed == cacheMessage ? _self.cacheMessage : cacheMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _Offline implements BaseFailure {
  const _Offline();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Offline);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseFailure.offline()';
}


}




/// @nodoc


class _Unexpected implements BaseFailure {
  const _Unexpected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unexpected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseFailure.unexpected()';
}


}




// dart format on

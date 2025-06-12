// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_value_object_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthValueObjectFailure<T> {

 String get failedValue;
/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthValueObjectFailureCopyWith<T, AuthValueObjectFailure<T>> get copyWith => _$AuthValueObjectFailureCopyWithImpl<T, AuthValueObjectFailure<T>>(this as AuthValueObjectFailure<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthValueObjectFailure<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue);

@override
String toString() {
  return 'AuthValueObjectFailure<$T>(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $AuthValueObjectFailureCopyWith<T,$Res>  {
  factory $AuthValueObjectFailureCopyWith(AuthValueObjectFailure<T> value, $Res Function(AuthValueObjectFailure<T>) _then) = _$AuthValueObjectFailureCopyWithImpl;
@useResult
$Res call({
 String failedValue
});




}
/// @nodoc
class _$AuthValueObjectFailureCopyWithImpl<T,$Res>
    implements $AuthValueObjectFailureCopyWith<T, $Res> {
  _$AuthValueObjectFailureCopyWithImpl(this._self, this._then);

  final AuthValueObjectFailure<T> _self;
  final $Res Function(AuthValueObjectFailure<T>) _then;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? failedValue = null,}) {
  return _then(_self.copyWith(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class InvalidEmail<T> implements AuthValueObjectFailure<T> {
  const InvalidEmail({required this.failedValue});
  

@override final  String failedValue;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith => _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidEmail<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue);

@override
String toString() {
  return 'AuthValueObjectFailure<$T>.invalidEmail(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidEmailCopyWith<T,$Res> implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(InvalidEmail<T> value, $Res Function(InvalidEmail<T>) _then) = _$InvalidEmailCopyWithImpl;
@override @useResult
$Res call({
 String failedValue
});




}
/// @nodoc
class _$InvalidEmailCopyWithImpl<T,$Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(this._self, this._then);

  final InvalidEmail<T> _self;
  final $Res Function(InvalidEmail<T>) _then;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = null,}) {
  return _then(InvalidEmail<T>(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ShortPassword<T> implements AuthValueObjectFailure<T> {
  const ShortPassword({required this.failedValue});
  

@override final  String failedValue;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith => _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShortPassword<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue);

@override
String toString() {
  return 'AuthValueObjectFailure<$T>.shortPassword(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $ShortPasswordCopyWith<T,$Res> implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(ShortPassword<T> value, $Res Function(ShortPassword<T>) _then) = _$ShortPasswordCopyWithImpl;
@override @useResult
$Res call({
 String failedValue
});




}
/// @nodoc
class _$ShortPasswordCopyWithImpl<T,$Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(this._self, this._then);

  final ShortPassword<T> _self;
  final $Res Function(ShortPassword<T>) _then;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = null,}) {
  return _then(ShortPassword<T>(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FullNameIsEmpty<T> implements AuthValueObjectFailure<T> {
  const FullNameIsEmpty({required this.failedValue});
  

@override final  String failedValue;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullNameIsEmptyCopyWith<T, FullNameIsEmpty<T>> get copyWith => _$FullNameIsEmptyCopyWithImpl<T, FullNameIsEmpty<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FullNameIsEmpty<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue);

@override
String toString() {
  return 'AuthValueObjectFailure<$T>.fullNameIsEmpty(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $FullNameIsEmptyCopyWith<T,$Res> implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory $FullNameIsEmptyCopyWith(FullNameIsEmpty<T> value, $Res Function(FullNameIsEmpty<T>) _then) = _$FullNameIsEmptyCopyWithImpl;
@override @useResult
$Res call({
 String failedValue
});




}
/// @nodoc
class _$FullNameIsEmptyCopyWithImpl<T,$Res>
    implements $FullNameIsEmptyCopyWith<T, $Res> {
  _$FullNameIsEmptyCopyWithImpl(this._self, this._then);

  final FullNameIsEmpty<T> _self;
  final $Res Function(FullNameIsEmpty<T>) _then;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = null,}) {
  return _then(FullNameIsEmpty<T>(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FullNameHasSpaces<T> implements AuthValueObjectFailure<T> {
  const FullNameHasSpaces({required this.failedValue});
  

@override final  String failedValue;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullNameHasSpacesCopyWith<T, FullNameHasSpaces<T>> get copyWith => _$FullNameHasSpacesCopyWithImpl<T, FullNameHasSpaces<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FullNameHasSpaces<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue);

@override
String toString() {
  return 'AuthValueObjectFailure<$T>.fullNameHasSpaces(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $FullNameHasSpacesCopyWith<T,$Res> implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory $FullNameHasSpacesCopyWith(FullNameHasSpaces<T> value, $Res Function(FullNameHasSpaces<T>) _then) = _$FullNameHasSpacesCopyWithImpl;
@override @useResult
$Res call({
 String failedValue
});




}
/// @nodoc
class _$FullNameHasSpacesCopyWithImpl<T,$Res>
    implements $FullNameHasSpacesCopyWith<T, $Res> {
  _$FullNameHasSpacesCopyWithImpl(this._self, this._then);

  final FullNameHasSpaces<T> _self;
  final $Res Function(FullNameHasSpaces<T>) _then;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = null,}) {
  return _then(FullNameHasSpaces<T>(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GenderIsEmpty<T> implements AuthValueObjectFailure<T> {
  const GenderIsEmpty({required this.failedValue});
  

@override final  String failedValue;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenderIsEmptyCopyWith<T, GenderIsEmpty<T>> get copyWith => _$GenderIsEmptyCopyWithImpl<T, GenderIsEmpty<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenderIsEmpty<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue);

@override
String toString() {
  return 'AuthValueObjectFailure<$T>.genderIsEmpty(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $GenderIsEmptyCopyWith<T,$Res> implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory $GenderIsEmptyCopyWith(GenderIsEmpty<T> value, $Res Function(GenderIsEmpty<T>) _then) = _$GenderIsEmptyCopyWithImpl;
@override @useResult
$Res call({
 String failedValue
});




}
/// @nodoc
class _$GenderIsEmptyCopyWithImpl<T,$Res>
    implements $GenderIsEmptyCopyWith<T, $Res> {
  _$GenderIsEmptyCopyWithImpl(this._self, this._then);

  final GenderIsEmpty<T> _self;
  final $Res Function(GenderIsEmpty<T>) _then;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = null,}) {
  return _then(GenderIsEmpty<T>(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PhoneNumberIsEmpty<T> implements AuthValueObjectFailure<T> {
  const PhoneNumberIsEmpty({required this.failedValue});
  

@override final  String failedValue;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneNumberIsEmptyCopyWith<T, PhoneNumberIsEmpty<T>> get copyWith => _$PhoneNumberIsEmptyCopyWithImpl<T, PhoneNumberIsEmpty<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneNumberIsEmpty<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue);

@override
String toString() {
  return 'AuthValueObjectFailure<$T>.phoneNumberIsEmpty(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $PhoneNumberIsEmptyCopyWith<T,$Res> implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory $PhoneNumberIsEmptyCopyWith(PhoneNumberIsEmpty<T> value, $Res Function(PhoneNumberIsEmpty<T>) _then) = _$PhoneNumberIsEmptyCopyWithImpl;
@override @useResult
$Res call({
 String failedValue
});




}
/// @nodoc
class _$PhoneNumberIsEmptyCopyWithImpl<T,$Res>
    implements $PhoneNumberIsEmptyCopyWith<T, $Res> {
  _$PhoneNumberIsEmptyCopyWithImpl(this._self, this._then);

  final PhoneNumberIsEmpty<T> _self;
  final $Res Function(PhoneNumberIsEmpty<T>) _then;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = null,}) {
  return _then(PhoneNumberIsEmpty<T>(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddressIsEmpty<T> implements AuthValueObjectFailure<T> {
  const AddressIsEmpty({required this.failedValue});
  

@override final  String failedValue;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressIsEmptyCopyWith<T, AddressIsEmpty<T>> get copyWith => _$AddressIsEmptyCopyWithImpl<T, AddressIsEmpty<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressIsEmpty<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue);

@override
String toString() {
  return 'AuthValueObjectFailure<$T>.addressIsEmpty(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $AddressIsEmptyCopyWith<T,$Res> implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory $AddressIsEmptyCopyWith(AddressIsEmpty<T> value, $Res Function(AddressIsEmpty<T>) _then) = _$AddressIsEmptyCopyWithImpl;
@override @useResult
$Res call({
 String failedValue
});




}
/// @nodoc
class _$AddressIsEmptyCopyWithImpl<T,$Res>
    implements $AddressIsEmptyCopyWith<T, $Res> {
  _$AddressIsEmptyCopyWithImpl(this._self, this._then);

  final AddressIsEmpty<T> _self;
  final $Res Function(AddressIsEmpty<T>) _then;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = null,}) {
  return _then(AddressIsEmpty<T>(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BirthDateIsEmpty<T> implements AuthValueObjectFailure<T> {
  const BirthDateIsEmpty({required this.failedValue});
  

@override final  String failedValue;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BirthDateIsEmptyCopyWith<T, BirthDateIsEmpty<T>> get copyWith => _$BirthDateIsEmptyCopyWithImpl<T, BirthDateIsEmpty<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BirthDateIsEmpty<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue);

@override
String toString() {
  return 'AuthValueObjectFailure<$T>.birthDateIsEmpty(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $BirthDateIsEmptyCopyWith<T,$Res> implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory $BirthDateIsEmptyCopyWith(BirthDateIsEmpty<T> value, $Res Function(BirthDateIsEmpty<T>) _then) = _$BirthDateIsEmptyCopyWithImpl;
@override @useResult
$Res call({
 String failedValue
});




}
/// @nodoc
class _$BirthDateIsEmptyCopyWithImpl<T,$Res>
    implements $BirthDateIsEmptyCopyWith<T, $Res> {
  _$BirthDateIsEmptyCopyWithImpl(this._self, this._then);

  final BirthDateIsEmpty<T> _self;
  final $Res Function(BirthDateIsEmpty<T>) _then;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = null,}) {
  return _then(BirthDateIsEmpty<T>(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ConfirmPasswordMustBeSameAsPassword<T> implements AuthValueObjectFailure<T> {
  const ConfirmPasswordMustBeSameAsPassword({required this.failedValue});
  

@override final  String failedValue;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmPasswordMustBeSameAsPasswordCopyWith<T, ConfirmPasswordMustBeSameAsPassword<T>> get copyWith => _$ConfirmPasswordMustBeSameAsPasswordCopyWithImpl<T, ConfirmPasswordMustBeSameAsPassword<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmPasswordMustBeSameAsPassword<T>&&(identical(other.failedValue, failedValue) || other.failedValue == failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,failedValue);

@override
String toString() {
  return 'AuthValueObjectFailure<$T>.confirmPasswordMustBeSameAsPassword(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $ConfirmPasswordMustBeSameAsPasswordCopyWith<T,$Res> implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory $ConfirmPasswordMustBeSameAsPasswordCopyWith(ConfirmPasswordMustBeSameAsPassword<T> value, $Res Function(ConfirmPasswordMustBeSameAsPassword<T>) _then) = _$ConfirmPasswordMustBeSameAsPasswordCopyWithImpl;
@override @useResult
$Res call({
 String failedValue
});




}
/// @nodoc
class _$ConfirmPasswordMustBeSameAsPasswordCopyWithImpl<T,$Res>
    implements $ConfirmPasswordMustBeSameAsPasswordCopyWith<T, $Res> {
  _$ConfirmPasswordMustBeSameAsPasswordCopyWithImpl(this._self, this._then);

  final ConfirmPasswordMustBeSameAsPassword<T> _self;
  final $Res Function(ConfirmPasswordMustBeSameAsPassword<T>) _then;

/// Create a copy of AuthValueObjectFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = null,}) {
  return _then(ConfirmPasswordMustBeSameAsPassword<T>(
failedValue: null == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_value_object_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthValueObjectFailure<T> {
  String get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) fullNameIsEmpty,
    required TResult Function(String failedValue) fullNameHasSpaces,
    required TResult Function(String failedValue) genderIsEmpty,
    required TResult Function(String failedValue) phoneNumberIsEmpty,
    required TResult Function(String failedValue) addressIsEmpty,
    required TResult Function(String failedValue) birthDateIsEmpty,
    required TResult Function(String failedValue)
        confirmPasswordMustBeSameAsPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? fullNameIsEmpty,
    TResult? Function(String failedValue)? fullNameHasSpaces,
    TResult? Function(String failedValue)? genderIsEmpty,
    TResult? Function(String failedValue)? phoneNumberIsEmpty,
    TResult? Function(String failedValue)? addressIsEmpty,
    TResult? Function(String failedValue)? birthDateIsEmpty,
    TResult? Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? fullNameIsEmpty,
    TResult Function(String failedValue)? fullNameHasSpaces,
    TResult Function(String failedValue)? genderIsEmpty,
    TResult Function(String failedValue)? phoneNumberIsEmpty,
    TResult Function(String failedValue)? addressIsEmpty,
    TResult Function(String failedValue)? birthDateIsEmpty,
    TResult Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(FullNameIsEmpty<T> value) fullNameIsEmpty,
    required TResult Function(FullNameHasSpaces<T> value) fullNameHasSpaces,
    required TResult Function(GenderIsEmpty<T> value) genderIsEmpty,
    required TResult Function(PhoneNumberIsEmpty<T> value) phoneNumberIsEmpty,
    required TResult Function(AddressIsEmpty<T> value) addressIsEmpty,
    required TResult Function(BirthDateIsEmpty<T> value) birthDateIsEmpty,
    required TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)
        confirmPasswordMustBeSameAsPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult? Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult? Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult? Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult? Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult? Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult? Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthValueObjectFailureCopyWith<T, AuthValueObjectFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthValueObjectFailureCopyWith<T, $Res> {
  factory $AuthValueObjectFailureCopyWith(AuthValueObjectFailure<T> value,
          $Res Function(AuthValueObjectFailure<T>) then) =
      _$AuthValueObjectFailureCopyWithImpl<T, $Res, AuthValueObjectFailure<T>>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class _$AuthValueObjectFailureCopyWithImpl<T, $Res,
        $Val extends AuthValueObjectFailure<T>>
    implements $AuthValueObjectFailureCopyWith<T, $Res> {
  _$AuthValueObjectFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_value.copyWith(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<T, $Res>
    implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value,
          $Res Function(_$InvalidEmailImpl<T>) then) =
      __$$InvalidEmailImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T, $Res>
    extends _$AuthValueObjectFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>>
    implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$InvalidEmailImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl<T> implements InvalidEmail<T> {
  const _$InvalidEmailImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueObjectFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) fullNameIsEmpty,
    required TResult Function(String failedValue) fullNameHasSpaces,
    required TResult Function(String failedValue) genderIsEmpty,
    required TResult Function(String failedValue) phoneNumberIsEmpty,
    required TResult Function(String failedValue) addressIsEmpty,
    required TResult Function(String failedValue) birthDateIsEmpty,
    required TResult Function(String failedValue)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? fullNameIsEmpty,
    TResult? Function(String failedValue)? fullNameHasSpaces,
    TResult? Function(String failedValue)? genderIsEmpty,
    TResult? Function(String failedValue)? phoneNumberIsEmpty,
    TResult? Function(String failedValue)? addressIsEmpty,
    TResult? Function(String failedValue)? birthDateIsEmpty,
    TResult? Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? fullNameIsEmpty,
    TResult Function(String failedValue)? fullNameHasSpaces,
    TResult Function(String failedValue)? genderIsEmpty,
    TResult Function(String failedValue)? phoneNumberIsEmpty,
    TResult Function(String failedValue)? addressIsEmpty,
    TResult Function(String failedValue)? birthDateIsEmpty,
    TResult Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(FullNameIsEmpty<T> value) fullNameIsEmpty,
    required TResult Function(FullNameHasSpaces<T> value) fullNameHasSpaces,
    required TResult Function(GenderIsEmpty<T> value) genderIsEmpty,
    required TResult Function(PhoneNumberIsEmpty<T> value) phoneNumberIsEmpty,
    required TResult Function(AddressIsEmpty<T> value) addressIsEmpty,
    required TResult Function(BirthDateIsEmpty<T> value) birthDateIsEmpty,
    required TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult? Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult? Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult? Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult? Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult? Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult? Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements AuthValueObjectFailure<T> {
  const factory InvalidEmail({required final String failedValue}) =
      _$InvalidEmailImpl<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordImplCopyWith<T, $Res>
    implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory _$$ShortPasswordImplCopyWith(_$ShortPasswordImpl<T> value,
          $Res Function(_$ShortPasswordImpl<T>) then) =
      __$$ShortPasswordImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$ShortPasswordImplCopyWithImpl<T, $Res>
    extends _$AuthValueObjectFailureCopyWithImpl<T, $Res,
        _$ShortPasswordImpl<T>>
    implements _$$ShortPasswordImplCopyWith<T, $Res> {
  __$$ShortPasswordImplCopyWithImpl(_$ShortPasswordImpl<T> _value,
      $Res Function(_$ShortPasswordImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$ShortPasswordImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortPasswordImpl<T> implements ShortPassword<T> {
  const _$ShortPasswordImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueObjectFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPasswordImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      __$$ShortPasswordImplCopyWithImpl<T, _$ShortPasswordImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) fullNameIsEmpty,
    required TResult Function(String failedValue) fullNameHasSpaces,
    required TResult Function(String failedValue) genderIsEmpty,
    required TResult Function(String failedValue) phoneNumberIsEmpty,
    required TResult Function(String failedValue) addressIsEmpty,
    required TResult Function(String failedValue) birthDateIsEmpty,
    required TResult Function(String failedValue)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? fullNameIsEmpty,
    TResult? Function(String failedValue)? fullNameHasSpaces,
    TResult? Function(String failedValue)? genderIsEmpty,
    TResult? Function(String failedValue)? phoneNumberIsEmpty,
    TResult? Function(String failedValue)? addressIsEmpty,
    TResult? Function(String failedValue)? birthDateIsEmpty,
    TResult? Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? fullNameIsEmpty,
    TResult Function(String failedValue)? fullNameHasSpaces,
    TResult Function(String failedValue)? genderIsEmpty,
    TResult Function(String failedValue)? phoneNumberIsEmpty,
    TResult Function(String failedValue)? addressIsEmpty,
    TResult Function(String failedValue)? birthDateIsEmpty,
    TResult Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(FullNameIsEmpty<T> value) fullNameIsEmpty,
    required TResult Function(FullNameHasSpaces<T> value) fullNameHasSpaces,
    required TResult Function(GenderIsEmpty<T> value) genderIsEmpty,
    required TResult Function(PhoneNumberIsEmpty<T> value) phoneNumberIsEmpty,
    required TResult Function(AddressIsEmpty<T> value) addressIsEmpty,
    required TResult Function(BirthDateIsEmpty<T> value) birthDateIsEmpty,
    required TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult? Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult? Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult? Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult? Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult? Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult? Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements AuthValueObjectFailure<T> {
  const factory ShortPassword({required final String failedValue}) =
      _$ShortPasswordImpl<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FullNameIsEmptyImplCopyWith<T, $Res>
    implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory _$$FullNameIsEmptyImplCopyWith(_$FullNameIsEmptyImpl<T> value,
          $Res Function(_$FullNameIsEmptyImpl<T>) then) =
      __$$FullNameIsEmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$FullNameIsEmptyImplCopyWithImpl<T, $Res>
    extends _$AuthValueObjectFailureCopyWithImpl<T, $Res,
        _$FullNameIsEmptyImpl<T>>
    implements _$$FullNameIsEmptyImplCopyWith<T, $Res> {
  __$$FullNameIsEmptyImplCopyWithImpl(_$FullNameIsEmptyImpl<T> _value,
      $Res Function(_$FullNameIsEmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$FullNameIsEmptyImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FullNameIsEmptyImpl<T> implements FullNameIsEmpty<T> {
  const _$FullNameIsEmptyImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueObjectFailure<$T>.fullNameIsEmpty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullNameIsEmptyImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FullNameIsEmptyImplCopyWith<T, _$FullNameIsEmptyImpl<T>> get copyWith =>
      __$$FullNameIsEmptyImplCopyWithImpl<T, _$FullNameIsEmptyImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) fullNameIsEmpty,
    required TResult Function(String failedValue) fullNameHasSpaces,
    required TResult Function(String failedValue) genderIsEmpty,
    required TResult Function(String failedValue) phoneNumberIsEmpty,
    required TResult Function(String failedValue) addressIsEmpty,
    required TResult Function(String failedValue) birthDateIsEmpty,
    required TResult Function(String failedValue)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return fullNameIsEmpty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? fullNameIsEmpty,
    TResult? Function(String failedValue)? fullNameHasSpaces,
    TResult? Function(String failedValue)? genderIsEmpty,
    TResult? Function(String failedValue)? phoneNumberIsEmpty,
    TResult? Function(String failedValue)? addressIsEmpty,
    TResult? Function(String failedValue)? birthDateIsEmpty,
    TResult? Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
  }) {
    return fullNameIsEmpty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? fullNameIsEmpty,
    TResult Function(String failedValue)? fullNameHasSpaces,
    TResult Function(String failedValue)? genderIsEmpty,
    TResult Function(String failedValue)? phoneNumberIsEmpty,
    TResult Function(String failedValue)? addressIsEmpty,
    TResult Function(String failedValue)? birthDateIsEmpty,
    TResult Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (fullNameIsEmpty != null) {
      return fullNameIsEmpty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(FullNameIsEmpty<T> value) fullNameIsEmpty,
    required TResult Function(FullNameHasSpaces<T> value) fullNameHasSpaces,
    required TResult Function(GenderIsEmpty<T> value) genderIsEmpty,
    required TResult Function(PhoneNumberIsEmpty<T> value) phoneNumberIsEmpty,
    required TResult Function(AddressIsEmpty<T> value) addressIsEmpty,
    required TResult Function(BirthDateIsEmpty<T> value) birthDateIsEmpty,
    required TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return fullNameIsEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult? Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult? Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult? Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult? Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult? Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult? Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
  }) {
    return fullNameIsEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (fullNameIsEmpty != null) {
      return fullNameIsEmpty(this);
    }
    return orElse();
  }
}

abstract class FullNameIsEmpty<T> implements AuthValueObjectFailure<T> {
  const factory FullNameIsEmpty({required final String failedValue}) =
      _$FullNameIsEmptyImpl<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$FullNameIsEmptyImplCopyWith<T, _$FullNameIsEmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FullNameHasSpacesImplCopyWith<T, $Res>
    implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory _$$FullNameHasSpacesImplCopyWith(_$FullNameHasSpacesImpl<T> value,
          $Res Function(_$FullNameHasSpacesImpl<T>) then) =
      __$$FullNameHasSpacesImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$FullNameHasSpacesImplCopyWithImpl<T, $Res>
    extends _$AuthValueObjectFailureCopyWithImpl<T, $Res,
        _$FullNameHasSpacesImpl<T>>
    implements _$$FullNameHasSpacesImplCopyWith<T, $Res> {
  __$$FullNameHasSpacesImplCopyWithImpl(_$FullNameHasSpacesImpl<T> _value,
      $Res Function(_$FullNameHasSpacesImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$FullNameHasSpacesImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FullNameHasSpacesImpl<T> implements FullNameHasSpaces<T> {
  const _$FullNameHasSpacesImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueObjectFailure<$T>.fullNameHasSpaces(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullNameHasSpacesImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FullNameHasSpacesImplCopyWith<T, _$FullNameHasSpacesImpl<T>>
      get copyWith =>
          __$$FullNameHasSpacesImplCopyWithImpl<T, _$FullNameHasSpacesImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) fullNameIsEmpty,
    required TResult Function(String failedValue) fullNameHasSpaces,
    required TResult Function(String failedValue) genderIsEmpty,
    required TResult Function(String failedValue) phoneNumberIsEmpty,
    required TResult Function(String failedValue) addressIsEmpty,
    required TResult Function(String failedValue) birthDateIsEmpty,
    required TResult Function(String failedValue)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return fullNameHasSpaces(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? fullNameIsEmpty,
    TResult? Function(String failedValue)? fullNameHasSpaces,
    TResult? Function(String failedValue)? genderIsEmpty,
    TResult? Function(String failedValue)? phoneNumberIsEmpty,
    TResult? Function(String failedValue)? addressIsEmpty,
    TResult? Function(String failedValue)? birthDateIsEmpty,
    TResult? Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
  }) {
    return fullNameHasSpaces?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? fullNameIsEmpty,
    TResult Function(String failedValue)? fullNameHasSpaces,
    TResult Function(String failedValue)? genderIsEmpty,
    TResult Function(String failedValue)? phoneNumberIsEmpty,
    TResult Function(String failedValue)? addressIsEmpty,
    TResult Function(String failedValue)? birthDateIsEmpty,
    TResult Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (fullNameHasSpaces != null) {
      return fullNameHasSpaces(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(FullNameIsEmpty<T> value) fullNameIsEmpty,
    required TResult Function(FullNameHasSpaces<T> value) fullNameHasSpaces,
    required TResult Function(GenderIsEmpty<T> value) genderIsEmpty,
    required TResult Function(PhoneNumberIsEmpty<T> value) phoneNumberIsEmpty,
    required TResult Function(AddressIsEmpty<T> value) addressIsEmpty,
    required TResult Function(BirthDateIsEmpty<T> value) birthDateIsEmpty,
    required TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return fullNameHasSpaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult? Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult? Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult? Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult? Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult? Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult? Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
  }) {
    return fullNameHasSpaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (fullNameHasSpaces != null) {
      return fullNameHasSpaces(this);
    }
    return orElse();
  }
}

abstract class FullNameHasSpaces<T> implements AuthValueObjectFailure<T> {
  const factory FullNameHasSpaces({required final String failedValue}) =
      _$FullNameHasSpacesImpl<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$FullNameHasSpacesImplCopyWith<T, _$FullNameHasSpacesImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderIsEmptyImplCopyWith<T, $Res>
    implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory _$$GenderIsEmptyImplCopyWith(_$GenderIsEmptyImpl<T> value,
          $Res Function(_$GenderIsEmptyImpl<T>) then) =
      __$$GenderIsEmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$GenderIsEmptyImplCopyWithImpl<T, $Res>
    extends _$AuthValueObjectFailureCopyWithImpl<T, $Res,
        _$GenderIsEmptyImpl<T>>
    implements _$$GenderIsEmptyImplCopyWith<T, $Res> {
  __$$GenderIsEmptyImplCopyWithImpl(_$GenderIsEmptyImpl<T> _value,
      $Res Function(_$GenderIsEmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$GenderIsEmptyImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenderIsEmptyImpl<T> implements GenderIsEmpty<T> {
  const _$GenderIsEmptyImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueObjectFailure<$T>.genderIsEmpty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderIsEmptyImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderIsEmptyImplCopyWith<T, _$GenderIsEmptyImpl<T>> get copyWith =>
      __$$GenderIsEmptyImplCopyWithImpl<T, _$GenderIsEmptyImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) fullNameIsEmpty,
    required TResult Function(String failedValue) fullNameHasSpaces,
    required TResult Function(String failedValue) genderIsEmpty,
    required TResult Function(String failedValue) phoneNumberIsEmpty,
    required TResult Function(String failedValue) addressIsEmpty,
    required TResult Function(String failedValue) birthDateIsEmpty,
    required TResult Function(String failedValue)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return genderIsEmpty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? fullNameIsEmpty,
    TResult? Function(String failedValue)? fullNameHasSpaces,
    TResult? Function(String failedValue)? genderIsEmpty,
    TResult? Function(String failedValue)? phoneNumberIsEmpty,
    TResult? Function(String failedValue)? addressIsEmpty,
    TResult? Function(String failedValue)? birthDateIsEmpty,
    TResult? Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
  }) {
    return genderIsEmpty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? fullNameIsEmpty,
    TResult Function(String failedValue)? fullNameHasSpaces,
    TResult Function(String failedValue)? genderIsEmpty,
    TResult Function(String failedValue)? phoneNumberIsEmpty,
    TResult Function(String failedValue)? addressIsEmpty,
    TResult Function(String failedValue)? birthDateIsEmpty,
    TResult Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (genderIsEmpty != null) {
      return genderIsEmpty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(FullNameIsEmpty<T> value) fullNameIsEmpty,
    required TResult Function(FullNameHasSpaces<T> value) fullNameHasSpaces,
    required TResult Function(GenderIsEmpty<T> value) genderIsEmpty,
    required TResult Function(PhoneNumberIsEmpty<T> value) phoneNumberIsEmpty,
    required TResult Function(AddressIsEmpty<T> value) addressIsEmpty,
    required TResult Function(BirthDateIsEmpty<T> value) birthDateIsEmpty,
    required TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return genderIsEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult? Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult? Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult? Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult? Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult? Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult? Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
  }) {
    return genderIsEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (genderIsEmpty != null) {
      return genderIsEmpty(this);
    }
    return orElse();
  }
}

abstract class GenderIsEmpty<T> implements AuthValueObjectFailure<T> {
  const factory GenderIsEmpty({required final String failedValue}) =
      _$GenderIsEmptyImpl<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$GenderIsEmptyImplCopyWith<T, _$GenderIsEmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberIsEmptyImplCopyWith<T, $Res>
    implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory _$$PhoneNumberIsEmptyImplCopyWith(_$PhoneNumberIsEmptyImpl<T> value,
          $Res Function(_$PhoneNumberIsEmptyImpl<T>) then) =
      __$$PhoneNumberIsEmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$PhoneNumberIsEmptyImplCopyWithImpl<T, $Res>
    extends _$AuthValueObjectFailureCopyWithImpl<T, $Res,
        _$PhoneNumberIsEmptyImpl<T>>
    implements _$$PhoneNumberIsEmptyImplCopyWith<T, $Res> {
  __$$PhoneNumberIsEmptyImplCopyWithImpl(_$PhoneNumberIsEmptyImpl<T> _value,
      $Res Function(_$PhoneNumberIsEmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$PhoneNumberIsEmptyImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberIsEmptyImpl<T> implements PhoneNumberIsEmpty<T> {
  const _$PhoneNumberIsEmptyImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueObjectFailure<$T>.phoneNumberIsEmpty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberIsEmptyImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberIsEmptyImplCopyWith<T, _$PhoneNumberIsEmptyImpl<T>>
      get copyWith => __$$PhoneNumberIsEmptyImplCopyWithImpl<T,
          _$PhoneNumberIsEmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) fullNameIsEmpty,
    required TResult Function(String failedValue) fullNameHasSpaces,
    required TResult Function(String failedValue) genderIsEmpty,
    required TResult Function(String failedValue) phoneNumberIsEmpty,
    required TResult Function(String failedValue) addressIsEmpty,
    required TResult Function(String failedValue) birthDateIsEmpty,
    required TResult Function(String failedValue)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return phoneNumberIsEmpty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? fullNameIsEmpty,
    TResult? Function(String failedValue)? fullNameHasSpaces,
    TResult? Function(String failedValue)? genderIsEmpty,
    TResult? Function(String failedValue)? phoneNumberIsEmpty,
    TResult? Function(String failedValue)? addressIsEmpty,
    TResult? Function(String failedValue)? birthDateIsEmpty,
    TResult? Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
  }) {
    return phoneNumberIsEmpty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? fullNameIsEmpty,
    TResult Function(String failedValue)? fullNameHasSpaces,
    TResult Function(String failedValue)? genderIsEmpty,
    TResult Function(String failedValue)? phoneNumberIsEmpty,
    TResult Function(String failedValue)? addressIsEmpty,
    TResult Function(String failedValue)? birthDateIsEmpty,
    TResult Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (phoneNumberIsEmpty != null) {
      return phoneNumberIsEmpty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(FullNameIsEmpty<T> value) fullNameIsEmpty,
    required TResult Function(FullNameHasSpaces<T> value) fullNameHasSpaces,
    required TResult Function(GenderIsEmpty<T> value) genderIsEmpty,
    required TResult Function(PhoneNumberIsEmpty<T> value) phoneNumberIsEmpty,
    required TResult Function(AddressIsEmpty<T> value) addressIsEmpty,
    required TResult Function(BirthDateIsEmpty<T> value) birthDateIsEmpty,
    required TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return phoneNumberIsEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult? Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult? Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult? Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult? Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult? Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult? Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
  }) {
    return phoneNumberIsEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (phoneNumberIsEmpty != null) {
      return phoneNumberIsEmpty(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberIsEmpty<T> implements AuthValueObjectFailure<T> {
  const factory PhoneNumberIsEmpty({required final String failedValue}) =
      _$PhoneNumberIsEmptyImpl<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$PhoneNumberIsEmptyImplCopyWith<T, _$PhoneNumberIsEmptyImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressIsEmptyImplCopyWith<T, $Res>
    implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory _$$AddressIsEmptyImplCopyWith(_$AddressIsEmptyImpl<T> value,
          $Res Function(_$AddressIsEmptyImpl<T>) then) =
      __$$AddressIsEmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$AddressIsEmptyImplCopyWithImpl<T, $Res>
    extends _$AuthValueObjectFailureCopyWithImpl<T, $Res,
        _$AddressIsEmptyImpl<T>>
    implements _$$AddressIsEmptyImplCopyWith<T, $Res> {
  __$$AddressIsEmptyImplCopyWithImpl(_$AddressIsEmptyImpl<T> _value,
      $Res Function(_$AddressIsEmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$AddressIsEmptyImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressIsEmptyImpl<T> implements AddressIsEmpty<T> {
  const _$AddressIsEmptyImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueObjectFailure<$T>.addressIsEmpty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressIsEmptyImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressIsEmptyImplCopyWith<T, _$AddressIsEmptyImpl<T>> get copyWith =>
      __$$AddressIsEmptyImplCopyWithImpl<T, _$AddressIsEmptyImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) fullNameIsEmpty,
    required TResult Function(String failedValue) fullNameHasSpaces,
    required TResult Function(String failedValue) genderIsEmpty,
    required TResult Function(String failedValue) phoneNumberIsEmpty,
    required TResult Function(String failedValue) addressIsEmpty,
    required TResult Function(String failedValue) birthDateIsEmpty,
    required TResult Function(String failedValue)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return addressIsEmpty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? fullNameIsEmpty,
    TResult? Function(String failedValue)? fullNameHasSpaces,
    TResult? Function(String failedValue)? genderIsEmpty,
    TResult? Function(String failedValue)? phoneNumberIsEmpty,
    TResult? Function(String failedValue)? addressIsEmpty,
    TResult? Function(String failedValue)? birthDateIsEmpty,
    TResult? Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
  }) {
    return addressIsEmpty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? fullNameIsEmpty,
    TResult Function(String failedValue)? fullNameHasSpaces,
    TResult Function(String failedValue)? genderIsEmpty,
    TResult Function(String failedValue)? phoneNumberIsEmpty,
    TResult Function(String failedValue)? addressIsEmpty,
    TResult Function(String failedValue)? birthDateIsEmpty,
    TResult Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (addressIsEmpty != null) {
      return addressIsEmpty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(FullNameIsEmpty<T> value) fullNameIsEmpty,
    required TResult Function(FullNameHasSpaces<T> value) fullNameHasSpaces,
    required TResult Function(GenderIsEmpty<T> value) genderIsEmpty,
    required TResult Function(PhoneNumberIsEmpty<T> value) phoneNumberIsEmpty,
    required TResult Function(AddressIsEmpty<T> value) addressIsEmpty,
    required TResult Function(BirthDateIsEmpty<T> value) birthDateIsEmpty,
    required TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return addressIsEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult? Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult? Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult? Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult? Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult? Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult? Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
  }) {
    return addressIsEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (addressIsEmpty != null) {
      return addressIsEmpty(this);
    }
    return orElse();
  }
}

abstract class AddressIsEmpty<T> implements AuthValueObjectFailure<T> {
  const factory AddressIsEmpty({required final String failedValue}) =
      _$AddressIsEmptyImpl<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$AddressIsEmptyImplCopyWith<T, _$AddressIsEmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirthDateIsEmptyImplCopyWith<T, $Res>
    implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory _$$BirthDateIsEmptyImplCopyWith(_$BirthDateIsEmptyImpl<T> value,
          $Res Function(_$BirthDateIsEmptyImpl<T>) then) =
      __$$BirthDateIsEmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$BirthDateIsEmptyImplCopyWithImpl<T, $Res>
    extends _$AuthValueObjectFailureCopyWithImpl<T, $Res,
        _$BirthDateIsEmptyImpl<T>>
    implements _$$BirthDateIsEmptyImplCopyWith<T, $Res> {
  __$$BirthDateIsEmptyImplCopyWithImpl(_$BirthDateIsEmptyImpl<T> _value,
      $Res Function(_$BirthDateIsEmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$BirthDateIsEmptyImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BirthDateIsEmptyImpl<T> implements BirthDateIsEmpty<T> {
  const _$BirthDateIsEmptyImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueObjectFailure<$T>.birthDateIsEmpty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirthDateIsEmptyImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirthDateIsEmptyImplCopyWith<T, _$BirthDateIsEmptyImpl<T>> get copyWith =>
      __$$BirthDateIsEmptyImplCopyWithImpl<T, _$BirthDateIsEmptyImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) fullNameIsEmpty,
    required TResult Function(String failedValue) fullNameHasSpaces,
    required TResult Function(String failedValue) genderIsEmpty,
    required TResult Function(String failedValue) phoneNumberIsEmpty,
    required TResult Function(String failedValue) addressIsEmpty,
    required TResult Function(String failedValue) birthDateIsEmpty,
    required TResult Function(String failedValue)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return birthDateIsEmpty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? fullNameIsEmpty,
    TResult? Function(String failedValue)? fullNameHasSpaces,
    TResult? Function(String failedValue)? genderIsEmpty,
    TResult? Function(String failedValue)? phoneNumberIsEmpty,
    TResult? Function(String failedValue)? addressIsEmpty,
    TResult? Function(String failedValue)? birthDateIsEmpty,
    TResult? Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
  }) {
    return birthDateIsEmpty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? fullNameIsEmpty,
    TResult Function(String failedValue)? fullNameHasSpaces,
    TResult Function(String failedValue)? genderIsEmpty,
    TResult Function(String failedValue)? phoneNumberIsEmpty,
    TResult Function(String failedValue)? addressIsEmpty,
    TResult Function(String failedValue)? birthDateIsEmpty,
    TResult Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (birthDateIsEmpty != null) {
      return birthDateIsEmpty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(FullNameIsEmpty<T> value) fullNameIsEmpty,
    required TResult Function(FullNameHasSpaces<T> value) fullNameHasSpaces,
    required TResult Function(GenderIsEmpty<T> value) genderIsEmpty,
    required TResult Function(PhoneNumberIsEmpty<T> value) phoneNumberIsEmpty,
    required TResult Function(AddressIsEmpty<T> value) addressIsEmpty,
    required TResult Function(BirthDateIsEmpty<T> value) birthDateIsEmpty,
    required TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return birthDateIsEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult? Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult? Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult? Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult? Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult? Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult? Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
  }) {
    return birthDateIsEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (birthDateIsEmpty != null) {
      return birthDateIsEmpty(this);
    }
    return orElse();
  }
}

abstract class BirthDateIsEmpty<T> implements AuthValueObjectFailure<T> {
  const factory BirthDateIsEmpty({required final String failedValue}) =
      _$BirthDateIsEmptyImpl<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$BirthDateIsEmptyImplCopyWith<T, _$BirthDateIsEmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordMustBeSameAsPasswordImplCopyWith<T, $Res>
    implements $AuthValueObjectFailureCopyWith<T, $Res> {
  factory _$$ConfirmPasswordMustBeSameAsPasswordImplCopyWith(
          _$ConfirmPasswordMustBeSameAsPasswordImpl<T> value,
          $Res Function(_$ConfirmPasswordMustBeSameAsPasswordImpl<T>) then) =
      __$$ConfirmPasswordMustBeSameAsPasswordImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$ConfirmPasswordMustBeSameAsPasswordImplCopyWithImpl<T, $Res>
    extends _$AuthValueObjectFailureCopyWithImpl<T, $Res,
        _$ConfirmPasswordMustBeSameAsPasswordImpl<T>>
    implements _$$ConfirmPasswordMustBeSameAsPasswordImplCopyWith<T, $Res> {
  __$$ConfirmPasswordMustBeSameAsPasswordImplCopyWithImpl(
      _$ConfirmPasswordMustBeSameAsPasswordImpl<T> _value,
      $Res Function(_$ConfirmPasswordMustBeSameAsPasswordImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$ConfirmPasswordMustBeSameAsPasswordImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordMustBeSameAsPasswordImpl<T>
    implements ConfirmPasswordMustBeSameAsPassword<T> {
  const _$ConfirmPasswordMustBeSameAsPasswordImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueObjectFailure<$T>.confirmPasswordMustBeSameAsPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordMustBeSameAsPasswordImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordMustBeSameAsPasswordImplCopyWith<T,
          _$ConfirmPasswordMustBeSameAsPasswordImpl<T>>
      get copyWith => __$$ConfirmPasswordMustBeSameAsPasswordImplCopyWithImpl<T,
          _$ConfirmPasswordMustBeSameAsPasswordImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) fullNameIsEmpty,
    required TResult Function(String failedValue) fullNameHasSpaces,
    required TResult Function(String failedValue) genderIsEmpty,
    required TResult Function(String failedValue) phoneNumberIsEmpty,
    required TResult Function(String failedValue) addressIsEmpty,
    required TResult Function(String failedValue) birthDateIsEmpty,
    required TResult Function(String failedValue)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return confirmPasswordMustBeSameAsPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(String failedValue)? fullNameIsEmpty,
    TResult? Function(String failedValue)? fullNameHasSpaces,
    TResult? Function(String failedValue)? genderIsEmpty,
    TResult? Function(String failedValue)? phoneNumberIsEmpty,
    TResult? Function(String failedValue)? addressIsEmpty,
    TResult? Function(String failedValue)? birthDateIsEmpty,
    TResult? Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
  }) {
    return confirmPasswordMustBeSameAsPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? fullNameIsEmpty,
    TResult Function(String failedValue)? fullNameHasSpaces,
    TResult Function(String failedValue)? genderIsEmpty,
    TResult Function(String failedValue)? phoneNumberIsEmpty,
    TResult Function(String failedValue)? addressIsEmpty,
    TResult Function(String failedValue)? birthDateIsEmpty,
    TResult Function(String failedValue)? confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (confirmPasswordMustBeSameAsPassword != null) {
      return confirmPasswordMustBeSameAsPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(FullNameIsEmpty<T> value) fullNameIsEmpty,
    required TResult Function(FullNameHasSpaces<T> value) fullNameHasSpaces,
    required TResult Function(GenderIsEmpty<T> value) genderIsEmpty,
    required TResult Function(PhoneNumberIsEmpty<T> value) phoneNumberIsEmpty,
    required TResult Function(AddressIsEmpty<T> value) addressIsEmpty,
    required TResult Function(BirthDateIsEmpty<T> value) birthDateIsEmpty,
    required TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)
        confirmPasswordMustBeSameAsPassword,
  }) {
    return confirmPasswordMustBeSameAsPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult? Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult? Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult? Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult? Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult? Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult? Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
  }) {
    return confirmPasswordMustBeSameAsPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(FullNameIsEmpty<T> value)? fullNameIsEmpty,
    TResult Function(FullNameHasSpaces<T> value)? fullNameHasSpaces,
    TResult Function(GenderIsEmpty<T> value)? genderIsEmpty,
    TResult Function(PhoneNumberIsEmpty<T> value)? phoneNumberIsEmpty,
    TResult Function(AddressIsEmpty<T> value)? addressIsEmpty,
    TResult Function(BirthDateIsEmpty<T> value)? birthDateIsEmpty,
    TResult Function(ConfirmPasswordMustBeSameAsPassword<T> value)?
        confirmPasswordMustBeSameAsPassword,
    required TResult orElse(),
  }) {
    if (confirmPasswordMustBeSameAsPassword != null) {
      return confirmPasswordMustBeSameAsPassword(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordMustBeSameAsPassword<T>
    implements AuthValueObjectFailure<T> {
  const factory ConfirmPasswordMustBeSameAsPassword(
          {required final String failedValue}) =
      _$ConfirmPasswordMustBeSameAsPasswordImpl<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmPasswordMustBeSameAsPasswordImplCopyWith<T,
          _$ConfirmPasswordMustBeSameAsPasswordImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

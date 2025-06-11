import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_value_object_failure.freezed.dart';

@freezed
abstract class AuthValueObjectFailure<T> with _$AuthValueObjectFailure<T> {
  const factory AuthValueObjectFailure.invalidEmail({
    required String failedValue,
  }) = InvalidEmail<T>;
  const factory AuthValueObjectFailure.shortPassword({
    required String failedValue,
  }) = ShortPassword<T>;
  const factory AuthValueObjectFailure.fullNameIsEmpty({
    required String failedValue,
  }) = FullNameIsEmpty<T>;
  const factory AuthValueObjectFailure.fullNameHasSpaces({
    required String failedValue,
  }) = FullNameHasSpaces<T>;
  const factory AuthValueObjectFailure.genderIsEmpty({
    required String failedValue,
  }) = GenderIsEmpty<T>;
  const factory AuthValueObjectFailure.phoneNumberIsEmpty({
    required String failedValue,
  }) = PhoneNumberIsEmpty<T>;
  const factory AuthValueObjectFailure.addressIsEmpty({
    required String failedValue,
  }) = AddressIsEmpty<T>;
  const factory AuthValueObjectFailure.birthDateIsEmpty({
    required String failedValue,
  }) = BirthDateIsEmpty<T>;
  const factory AuthValueObjectFailure.confirmPasswordMustBeSameAsPassword({
    required String failedValue,
  }) = ConfirmPasswordMustBeSameAsPassword<T>;
}

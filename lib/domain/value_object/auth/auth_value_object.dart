import 'package:dartz/dartz.dart';

import '../../core/failures/auth_value_object/auth_value_object_failure.dart';
import '../../core/validators/value_validators.dart';
import '../value_object.dart';

class ConfirmPassword extends ValueObject<String, AuthValueObjectFailure<String>> {
  final Either<AuthValueObjectFailure<String>, String> _value;

  factory ConfirmPassword(String confirmPassword, String password) {
    return ConfirmPassword._(validateConfirmPassword(confirmPassword, password));
  }

  const ConfirmPassword._(this._value);

  @override
  Either<AuthValueObjectFailure<String>, String> get value => _value;
}

class Password extends ValueObject<String, AuthValueObjectFailure<String>> {
  final Either<AuthValueObjectFailure<String>, String> _value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this._value);

  @override
  Either<AuthValueObjectFailure<String>, String> get value => _value;
}

class PhoneNumber extends ValueObject<String, AuthValueObjectFailure<String>> {
  final Either<AuthValueObjectFailure<String>, String> _value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(validatePhoneNumber(input));
  }

  const PhoneNumber._(this._value);

  @override
  Either<AuthValueObjectFailure<String>, String> get value => _value;
}

class Address extends ValueObject<String, AuthValueObjectFailure<String>> {
  final Either<AuthValueObjectFailure<String>, String> _value;

  factory Address(String input) {
    return Address._(validateAddress(input));
  }

  const Address._(this._value);

  @override
  Either<AuthValueObjectFailure<String>, String> get value => _value;
}

class EmailAddress extends ValueObject<String, AuthValueObjectFailure<String>> {
  final Either<AuthValueObjectFailure<String>, String> _value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this._value);

  @override
  Either<AuthValueObjectFailure<String>, String> get value => _value;
}

class FullName extends ValueObject<String, AuthValueObjectFailure<String>> {
  final Either<AuthValueObjectFailure<String>, String> _value;

  factory FullName(String input) {
    return FullName._(validateFullName(input));
  }

  const FullName._(this._value);

  @override
  Either<AuthValueObjectFailure<String>, String> get value => _value;
}

class Gender extends ValueObject<String, AuthValueObjectFailure<String>> {
  final Either<AuthValueObjectFailure<String>, String> _value;

  factory Gender(String input) {
    return Gender._(validateGender(input));
  }

  const Gender._(this._value);

  @override
  Either<AuthValueObjectFailure<String>, String> get value => _value;
}

class BirthDate extends ValueObject<String, AuthValueObjectFailure<String>> {
  final Either<AuthValueObjectFailure<String>, String> _value;

  factory BirthDate(String input) {
    return BirthDate._(validateBirthDate(input));
  }

  const BirthDate._(this._value);

  @override
  Either<AuthValueObjectFailure<String>, String> get value => _value;
}

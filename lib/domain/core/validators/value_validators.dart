import 'package:dartz/dartz.dart';

import '../failures/auth_value_object/auth_value_object_failure.dart';

const _email =
    r"""^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$""";

Either<AuthValueObjectFailure<String>, String> validateEmailAddress(String input) {
  if (input.isEmpty) return left(AuthValueObjectFailure.invalidEmail(failedValue: input));
  if (RegExp(_email).hasMatch(input)) {
    return right(input);
  } else {
    return left(AuthValueObjectFailure.invalidEmail(failedValue: input));
  }
}

Either<AuthValueObjectFailure<String>, String> validatePassword(String input) {
  if (input.isEmpty) return left(AuthValueObjectFailure.shortPassword(failedValue: input));
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(AuthValueObjectFailure.shortPassword(failedValue: input));
  }
}

Either<AuthValueObjectFailure<String>, String> validateAddress(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(AuthValueObjectFailure.addressIsEmpty(failedValue: input));
  }
}

Either<AuthValueObjectFailure<String>, String> validateFullName(String input) {
  final RegExp noSpacesRegex = RegExp(r'^\S+$');

  if (input.isEmpty) {
    return left(AuthValueObjectFailure.fullNameIsEmpty(failedValue: input));
  } else if (!noSpacesRegex.hasMatch(input)) {
    return left(AuthValueObjectFailure.fullNameHasSpaces(failedValue: input));
  } else {
    return right(input);
  }
}

Either<AuthValueObjectFailure<String>, String> validateGender(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(AuthValueObjectFailure.genderIsEmpty(failedValue: input));
  }
}

Either<AuthValueObjectFailure<String>, String> validateBirthDate(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(AuthValueObjectFailure.birthDateIsEmpty(failedValue: input));
  }
}

Either<AuthValueObjectFailure<String>, String> validatePhoneNumber(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(AuthValueObjectFailure.phoneNumberIsEmpty(failedValue: input));
  }
}

Either<AuthValueObjectFailure<String>, String> validateConfirmPassword(String confirmPassword, String password) {
  if (confirmPassword.isEmpty) {
    return left(AuthValueObjectFailure.confirmPasswordMustBeSameAsPassword(failedValue: confirmPassword));
  }
  if (confirmPassword == password) {
    return right(confirmPassword);
  } else {
    return left(AuthValueObjectFailure.confirmPasswordMustBeSameAsPassword(failedValue: confirmPassword));
  }
}

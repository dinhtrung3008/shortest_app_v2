import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/value_object/auth/auth_value_object.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInWithEmailEvent({required EmailAddress email, required Password password}) = SignInWithEmailEvent;

  const factory AuthEvent.signUpWithEmailEvent({
    required FullName fullName,
    required EmailAddress emailAddress,
    required PhoneNumber phoneNumber,
    required BirthDate birthDate,
    required Gender gender,
    required Address address,
    required Password password,
    required ConfirmPassword confirmPassword,
  }) = SignUpWithEmailEvent;

  const factory AuthEvent.verificationEmailEvent({required EmailAddress email}) = VerificationEmailEvent;

  const factory AuthEvent.signOutEvent() = SignOutEvent;
}

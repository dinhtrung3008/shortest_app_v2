import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/value_object/auth/auth_value_object.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInWithEmail({
    required EmailAddress email,
    required Password password,
  }) = _SignInWithEmail;

  const factory AuthEvent.signUpWithEmail({
    required FullName fullName,
    required EmailAddress emailAddress,
    required PhoneNumber phoneNumber,
    required BirthDate birthDate,
    required Gender gender,
    required Address address,
    required Password password,
    required ConfirmPassword confirmPassword,
  }) = _SignUpWithEmail;

  const factory AuthEvent.verificationEmail({required EmailAddress email}) =
      _VerificationEmail;

  const factory AuthEvent.signOut() = _SignOut;
}

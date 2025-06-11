import 'package:dartz/dartz.dart';

import '../../core/failures/base_failure.dart';
import '../../value_object/auth/auth_value_object.dart';

abstract class ISignInWithEmail {
  Future<Either<BaseFailure, Unit>> call({required EmailAddress email, required Password password});
}

abstract class ISignOut {
  Future<Either<BaseFailure, Unit>> call();
}

abstract class ISignUpWithEmail {
  Future<Either<BaseFailure, Unit>> call({
    required FullName fullName,
    required EmailAddress emailAddress,
    required PhoneNumber phoneNumber,
    required BirthDate birthDate,
    required Gender gender,
    required Address address,
    required Password password,
    required ConfirmPassword confirmPassword,
  });
}

abstract class IVerificationEmail {
  Future<Either<BaseFailure, Unit>> call({required EmailAddress emailAddress});
}

abstract class IPasswordReset {
  Future<Either<BaseFailure, Unit>> call({required EmailAddress emailAddress});
}

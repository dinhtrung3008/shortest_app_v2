import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/repositories/auth/i_auth_repository.dart';
import '../../../../domain/value_object/auth/auth_value_object.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/auth/auth_remote_service.dart';
import '../../dtos/user_shortest/user_shortest_dto.dart';

@LazySingleton(as: ISignUpWithEmail)
class SignUpWithEmailImpl with ExecuteRepositoryImpl, ConnectionChecker implements ISignUpWithEmail {
  final IAuthRemoteService _iAuthRemoteService;

  SignUpWithEmailImpl(this._iAuthRemoteService);

  @override
  Future<Either<BaseFailure, Unit>> call({
    required FullName fullName,
    required EmailAddress emailAddress,
    required PhoneNumber phoneNumber,
    required BirthDate birthDate,
    required Gender gender,
    required Address address,
    required Password password,
    required ConfirmPassword confirmPassword,
  }) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline(message: 'No internet connection'));
    }

    return executeRepositoryService<Unit>(
      action: () async {
        final fullNameStr = fullName.getValueOrCrash();
        final emailStr = emailAddress.getValueOrCrash();
        final phoneNumberStr = phoneNumber.getValueOrCrash();
        final birthDateStr = birthDate.getValueOrCrash();
        final genderStr = gender.getValueOrCrash();
        final addressStr = address.getValueOrCrash();
        final passwordStr = password.getValueOrCrash();
        final confirmPasswordStr = confirmPassword.getValueOrCrash();

        if (fullNameStr.isNotEmpty &&
            emailStr.isNotEmpty &&
            phoneNumberStr.isNotEmpty &&
            birthDateStr.isNotEmpty &&
            genderStr.isNotEmpty &&
            addressStr.isNotEmpty &&
            passwordStr.isNotEmpty &&
            confirmPasswordStr.isNotEmpty) {
          final userDTO = UserShortestDTO(
            username: fullNameStr,
            email: emailStr,
            emailVisibility: true,
            password: passwordStr,
            passwordConfirm: confirmPasswordStr,
            birthDate: DateTime.parse(birthDateStr),
            phoneNumber: phoneNumberStr,
            gender: genderStr,
            address: addressStr,
          );

          await _iAuthRemoteService.signUpWithEmailAndPassword(userDTO: userDTO);
        }
        return right(unit);
      },
    );
  }
}

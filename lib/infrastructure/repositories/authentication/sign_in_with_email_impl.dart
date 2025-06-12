import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/repositories/auth/i_auth_repository.dart';
import '../../../../domain/value_object/auth/auth_value_object.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/authentication/authentication_remote_service.dart';
import '../../dtos/user_shortest/user_shortest_dto.dart';

@LazySingleton(as: ISignInWithEmail)
class SignInWithEmailImpl with ExecuteRepositoryImpl, ConnectionChecker implements ISignInWithEmail {
  final IAuthenticationRemoteService _iAuthSupabaseService;

  SignInWithEmailImpl(this._iAuthSupabaseService);

  @override
  Future<Either<BaseFailure, Unit>> call({required EmailAddress email, required Password password}) async {
    final hasInternet = await internetChecker();

    if (!hasInternet) {
      return left(BaseFailure.offline(message: 'No internet connection'));
    }

    return execute<Unit>(
      action: () async {
        final emailStr = email.getValueOrCrash();
        final passwordStr = password.getValueOrCrash();

        if (emailStr.isNotEmpty && passwordStr.isNotEmpty) {
          final userDTO = UserShortestDTO(identity: emailStr, password: passwordStr);
          await _iAuthSupabaseService.signInWithEmailAndPassword(userDTO: userDTO);
        }
        return right(unit);
      },
    );
  }
}

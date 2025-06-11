import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/repositories/auth/i_auth_repository.dart';
import '../../../../domain/value_object/auth/auth_value_object.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/authentication/authentication_remote_service.dart';
import '../../dtos/user_shortest/user_shortest_dto.dart';

@LazySingleton(as: IVerificationEmail)
class VerificationEmailImpl with ExecuteRepositoryImpl, ConnectionChecker implements IVerificationEmail {
  final IAuthenticationRemoteService _iAuthenticationSupabaseRemoteService;

  VerificationEmailImpl(this._iAuthenticationSupabaseRemoteService);

  @override
  Future<Either<BaseFailure, Unit>> call({required EmailAddress emailAddress}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<Unit>(
      action: () async {
        final emailStr = emailAddress.getValueOrCrash();

        if (emailStr.isNotEmpty) {
          final userDTO = UserShortestDTO(email: emailStr);
          await _iAuthenticationSupabaseRemoteService.requestVerificationEmail(userDTO: userDTO);
        }
        return right(unit);
      },
    );
  }
}

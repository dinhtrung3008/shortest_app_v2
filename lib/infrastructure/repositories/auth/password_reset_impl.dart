import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/repositories/auth/i_auth_repository.dart';
import '../../../../domain/value_object/auth/auth_value_object.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/auth/auth_remote_service.dart';
import '../../dtos/user_shortest/user_shortest_dto.dart';

@LazySingleton(as: IPasswordReset)
class PasswordResetImpl with ExecuteRepositoryImpl, ConnectionChecker implements IPasswordReset {
  final IAuthRemoteService _iAuthRemoveService;

  PasswordResetImpl(this._iAuthRemoveService);

  @override
  Future<Either<BaseFailure, Unit>> call({required EmailAddress emailAddress}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<Unit>(
      action: () async {
        final emailStr = emailAddress.getValueOrCrash();
        if (emailStr.isNotEmpty) {
          final userDTO = UserShortestDTO(email: emailStr);
          await _iAuthRemoveService.requestPasswordReset(userDTO: userDTO);
        }
        return right(unit);
      },
    );
  }
}

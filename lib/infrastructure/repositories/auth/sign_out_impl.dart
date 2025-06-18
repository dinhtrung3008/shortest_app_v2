import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/repositories/auth/i_auth_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/local/search/search_local_service.dart';
import '../../data/local/user/user_local_service.dart';
import '../../data/remote/auth/auth_remote_service.dart';

@LazySingleton(as: ISignOut)
class SignOutImpl with ExecuteRepositoryImpl, ConnectionChecker implements ISignOut {
  final IAuthRemoteService _iAuthRemoteService;
  final IUserLocalService _iUserLocalService;
  final ISearchLocalService _iSearchLocalService;

  SignOutImpl(this._iAuthRemoteService, this._iUserLocalService, this._iSearchLocalService);

  @override
  Future<Either<BaseFailure, Unit>> call() async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<Unit>(
      action: () async {
        await _iSearchLocalService.deleteListSearchHistory();
        await _iUserLocalService.deleteCachedCurrentUser();
        await _iAuthRemoteService.signOut();
        return right(unit);
      },
    );
  }
}

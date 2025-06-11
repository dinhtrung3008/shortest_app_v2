import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/exceptions/exceptions.dart';
import '../../../../domain/entities/user_shortest/user_shortest.dart';
import '../../../../domain/repositories/current_user/i_current_user_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../data/local/user/user_local_service.dart';
import '../../data/remote/current_user/current_user_remote_service.dart';

@LazySingleton(as: IGetCurrentUserById)
class GetCurrentUserByIdImpl with ConnectionChecker implements IGetCurrentUserById {
  final ICurrentUserRemoteService _iUserSupabaseService;
  final IUserLocalService _iUserLocalService;

  GetCurrentUserByIdImpl(this._iUserSupabaseService, this._iUserLocalService);

  @override
  Future<Option<UserShortest?>> call() async {
    final hasInternet = await internetChecker();

    if (!hasInternet) {
      final userLocal = await _iUserLocalService.getCachedCurrentUser();

      if (userLocal != null) {
        return optionOf(userLocal);
      }
      return none();
    }

    try {
      final userLocal = await _iUserLocalService.getCachedCurrentUser();

      if (userLocal != null) {
        return optionOf(userLocal);
      }

      final userRemote = await _iUserSupabaseService.getCurrentUserById();

      if (userRemote.isSome() && userRemote.toNullable() != null) {
        await _iUserLocalService.caheCurrentUser(userRemote.toNullable()!.toDomain());
        return optionOf(userRemote.toNullable()!.toDomain());
      }

      return none();
    } on ServerException catch (_) {
      final userLocal = await _iUserLocalService.getCachedCurrentUser();
      if (userLocal != null) {
        return optionOf(userLocal);
      }
      return none();
    } on CacheException catch (_) {
      return none();
    }
  }
}

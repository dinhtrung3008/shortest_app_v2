import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/user_shortest/user_shortest.dart';
import '../../../../domain/repositories/current_user/i_current_user_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/local/user/user_local_service.dart';
import '../../data/remote/current_user/current_user_remote_service.dart';

@LazySingleton(as: IDecreaseFollowings)
class DecrementFollowingsImpl with ExecuteRepositoryImpl, ConnectionChecker implements IDecreaseFollowings {
  final ICurrentUserRemoteService _iCurrentUserRemoteService;
  final IUserLocalService _iUserLocalService;

  DecrementFollowingsImpl(this._iCurrentUserRemoteService, this._iUserLocalService);

  @override
  Future<Either<BaseFailure, UserShortest>> call({
    required List<String> currentUserFollowings,
    required String viewerUserId,
  }) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<UserShortest>(
      action: () async {
        final response = await _iCurrentUserRemoteService.decreaseFollowings(
          currentUserFollowings: currentUserFollowings,
          viewerUserId: viewerUserId,
        );

        await _iUserLocalService.caheCurrentUser(response.toDomain());

        return right(response.toDomain());
      },
    );
  }
}

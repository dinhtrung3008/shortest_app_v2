import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/user_shortest/user_shortest.dart';
import '../../../../domain/repositories/viewer_user/i_viewer_user_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/viewer_user/viewer_user_remote_service.dart';

@LazySingleton(as: IDecreaseFollowers)
class DecreaseFollowersImpl with ExecuteRepositoryImpl, ConnectionChecker implements IDecreaseFollowers {
  final IViewerUserRemoteService _iViewerUserRemoveService;

  DecreaseFollowersImpl(this._iViewerUserRemoveService);

  @override
  Future<Either<BaseFailure, UserShortest>> call({
    required List<String> viewerFollowers,
    required String viewerId,
  }) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<UserShortest>(
      action: () async {
        final response = await _iViewerUserRemoveService.decrementFollowers(
          viewerFollowers: viewerFollowers,
          viewerId: viewerId,
        );

        return right(response.toDomain());
      },
    );
  }
}

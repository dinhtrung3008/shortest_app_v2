import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/repositories/share_post/i_share_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/share_post/share_post_remote_service.dart';

@LazySingleton(as: IDeleteSharePost)
class DeleteSharePostImpl with ExecuteRepositoryImpl, ConnectionChecker implements IDeleteSharePost {
  final ISharePostRemoteService _iSharePostRemoteService;

  DeleteSharePostImpl(this._iSharePostRemoteService);

  @override
  Future<Either<BaseFailure, Unit>> call({required String sharePostId}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<Unit>(
      action: () async {
        await _iSharePostRemoteService.deleteSharePost(sharePostId: sharePostId);
        return right(unit);
      },
    );
  }
}

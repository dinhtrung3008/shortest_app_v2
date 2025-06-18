import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/share_post/share_post.dart';
import '../../../../domain/repositories/share_post/i_share_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/share_post/share_post_remote_service.dart';

@LazySingleton(as: IUpdateSharePost)
class UpdateSharePostImpl with ExecuteRepositoryImpl, ConnectionChecker implements IUpdateSharePost {
  final ISharePostRemoteService _iSharePostRemoteService;

  UpdateSharePostImpl(this._iSharePostRemoteService);

  @override
  Future<Either<BaseFailure, SharePost>> call({required String sharePostId}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<SharePost>(
      action: () async {
        final response = await _iSharePostRemoteService.updateSharePost(sharePostId: sharePostId);
        return right(response.toDomain());
      },
    );
  }
}

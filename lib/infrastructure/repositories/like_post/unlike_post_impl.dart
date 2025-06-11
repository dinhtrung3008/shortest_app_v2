import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/repositories/like_post/i_like_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/like_post/like_post_remote_service.dart';

@LazySingleton(as: IUnlikePost)
class UnlikePostImpl with ExecuteRepositoryImpl, ConnectionChecker implements IUnlikePost {
  final ILikePostRemoteService _iLikePostRemoteService;

  UnlikePostImpl(this._iLikePostRemoteService);

  @override
  Future<Either<BaseFailure, Unit>> call({required String likePostId}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<Unit>(
      action: () async {
        await _iLikePostRemoteService.unlikePost(likePostId: likePostId);
        return right(unit);
      },
    );
  }
}

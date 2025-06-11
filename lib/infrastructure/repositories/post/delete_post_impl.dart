import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/repositories/post/i_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/post/post_remote_service.dart';

@LazySingleton(as: IDeletePost)
class DeletePostImpl with ExecuteRepositoryImpl, ConnectionChecker implements IDeletePost {
  final IPostRemoteService _iPostRemoteService;

  DeletePostImpl(this._iPostRemoteService);

  @override
  Future<Either<BaseFailure, Unit>> call({required String postId}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<Unit>(
      action: () async {
        await _iPostRemoteService.deletePost(postId: postId);
        return right(unit);
      },
    );
  }
}

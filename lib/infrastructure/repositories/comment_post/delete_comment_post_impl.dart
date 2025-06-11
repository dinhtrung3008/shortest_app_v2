import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/repositories/comment_post/i_comment_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/comment_post/comment_post_remote_service.dart';

@LazySingleton(as: IDeleteCommentPost)
class DeleteCommentPostImpl with ExecuteRepositoryImpl, ConnectionChecker implements IDeleteCommentPost {
  final ICommentPostRemoteService _iCommentPostRemoteService;

  DeleteCommentPostImpl(this._iCommentPostRemoteService);

  @override
  Future<Either<BaseFailure, Unit>> call({required String commentId}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<Unit>(
      action: () async {
        await _iCommentPostRemoteService.deleteComment(commentId: commentId);
        return right(unit);
      },
    );
  }
}

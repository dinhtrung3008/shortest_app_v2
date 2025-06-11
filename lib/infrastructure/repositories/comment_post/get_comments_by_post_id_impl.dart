import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/comment_post/comment_post.dart';
import '../../../../domain/repositories/comment_post/i_comment_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/comment_post/comment_post_remote_service.dart';

@LazySingleton(as: IGetCommentsByPostId)
class GetCommentsByPostIdImpl with ExecuteRepositoryImpl, ConnectionChecker implements IGetCommentsByPostId {
  final ICommentPostRemoteService _iCommentPostRemoteService;

  GetCommentsByPostIdImpl(this._iCommentPostRemoteService);

  @override
  Future<Either<BaseFailure, List<CommentPost>?>> call({int page = 1, int perPage = 10, required String postId}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<List<CommentPost>?>(
      action: () async {
        final response = await _iCommentPostRemoteService.getCommentsByPostId(
          page: page,
          perPage: perPage,
          postId: postId,
        );
        if (response.commentsPost != null) {
          if (response.commentsPost?.isNotEmpty == true) {
            final comments = response.commentsPost?.map((e) => e.toDomain()).toList();
            return right(comments);
          }
        }
        return right([]);
      },
    );
  }
}

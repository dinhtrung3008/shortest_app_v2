import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/comment_post/comment_post.dart';
import '../../../../domain/repositories/comment_post/i_comment_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/comment_post/comment_post_remote_service.dart';

@LazySingleton(as: IAddCommentPost)
class AddCommentPostImpl with ExecuteRepositoryImpl, ConnectionChecker implements IAddCommentPost {
  final ICommentPostRemoteService _iCommentPostRemoteService;

  AddCommentPostImpl(this._iCommentPostRemoteService);

  @override
  Future<Either<BaseFailure, CommentPost>> call({
    required String content,
    required String postId,
    List<XFile>? mediaFiles,
  }) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<CommentPost>(
      action: () async {
        final response = await _iCommentPostRemoteService.addComment(
          content: content,
          postId: postId,
          mediaFiles: mediaFiles,
        );
        return right(response.toDomain());
      },
    );
  }
}

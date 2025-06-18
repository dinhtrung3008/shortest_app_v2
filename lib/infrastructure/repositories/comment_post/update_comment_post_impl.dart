import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/comment_post/comment_post.dart';
import '../../../../domain/repositories/comment_post/i_comment_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/comment_post/comment_post_remote_service.dart';

@LazySingleton(as: IUpdateCommentPost)
class UpdateCommentPostImpl with ExecuteRepositoryImpl, ConnectionChecker implements IUpdateCommentPost {
  final ICommentPostRemoteService _iCommentPostRemoteService;

  UpdateCommentPostImpl(this._iCommentPostRemoteService);

  @override
  Future<Either<BaseFailure, CommentPost>> call({
    required String commentId,
    required String newContent,
    List<XFile>? mediaFiles,
  }) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<CommentPost>(
      action: () async {
        final response = await _iCommentPostRemoteService.updateComment(
          commentId: commentId,
          newContent: newContent,
          mediaFiles: mediaFiles,
        );
        return right(response.toDomain());
      },
    );
  }
}

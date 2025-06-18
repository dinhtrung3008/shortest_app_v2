import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/post_shortest/post_shortest.dart';
import '../../../../domain/repositories/post/i_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/post/post_remote_service.dart';

@LazySingleton(as: IUpdatePost)
class UpdatePostImpl with ExecuteRepositoryImpl, ConnectionChecker implements IUpdatePost {
  final IPostRemoteService _iPostRemoteService;

  UpdatePostImpl(this._iPostRemoteService);

  @override
  Future<Either<BaseFailure, PostShortest>> call({
    required String postId,
    String? content,
    String? visibility,
    List<XFile>? mediaFiles,
  }) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<PostShortest>(
      action: () async {
        final response = await _iPostRemoteService.updatePost(
          postId: postId,
          content: content,
          visibility: visibility,
          mediaFiles: mediaFiles,
        );
        return right(response.toDomain());
      },
    );
  }
}

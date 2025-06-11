import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/like_post/like_post.dart';
import '../../../../domain/repositories/like_post/i_like_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/like_post/like_post_remote_service.dart';

@LazySingleton(as: ILikePost)
class LikePostImpl with ExecuteRepositoryImpl, ConnectionChecker implements ILikePost {
  final ILikePostRemoteService _iLikePostRemoteService;

  LikePostImpl(this._iLikePostRemoteService);

  @override
  Future<Either<BaseFailure, LikePost>> call({required String postId}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<LikePost>(
      action: () async {
        final response = await _iLikePostRemoteService.likePost(postId: postId);
        return right(response.toDomain());
      },
    );
  }
}

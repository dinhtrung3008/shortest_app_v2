import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/like_post/like_post.dart';
import '../../../../domain/repositories/like_post/i_like_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/like_post/like_post_remote_service.dart';

@LazySingleton(as: IGetLikesByPostId)
class GetLikesByPostIdImpl with ExecuteRepositoryImpl, ConnectionChecker implements IGetLikesByPostId {
  final ILikePostRemoteService _iLikePostRemoteService;

  GetLikesByPostIdImpl(this._iLikePostRemoteService);

  @override
  Future<Either<BaseFailure, List<LikePost>?>> call({required String postId, int page = 1, int perPage = 10}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<List<LikePost>?>(
      action: () async {
        final response = await _iLikePostRemoteService.getLikesByPostId(postId: postId);
        if (response.likePosts != null) {
          if (response.likePosts?.isNotEmpty == true) {
            final likes = response.likePosts?.map((like) => like.toDomain()).toList();
            return right(likes);
          }
        }
        return right([]);
      },
    );
  }
}

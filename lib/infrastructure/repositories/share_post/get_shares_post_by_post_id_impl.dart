import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/share_post/share_post.dart';
import '../../../../domain/repositories/share_post/i_share_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/share_post/share_post_remote_service.dart';

@LazySingleton(as: IGetSharePostsByPostId)
class GetSharePostsByPostIdImpl with ExecuteRepositoryImpl, ConnectionChecker implements IGetSharePostsByPostId {
  final ISharePostRemoteService _iSharePostRemoteService;

  GetSharePostsByPostIdImpl(this._iSharePostRemoteService);

  @override
  Future<Either<BaseFailure, List<SharePost>?>> call({required String postId, int page = 1, int perPage = 10}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<List<SharePost>?>(
      action: () async {
        final response = await _iSharePostRemoteService.getSharePostsByPostId(
          page: page,
          perPage: perPage,
          postId: postId,
        );
        if (response.sharePosts != null) {
          if (response.sharePosts?.isNotEmpty == true) {
            final shares = response.sharePosts?.map((e) => e.toDomain()).toList();
            return right(shares);
          }
        }
        return right([]);
      },
    );
  }
}

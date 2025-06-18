import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/post_shortest/post_shortest.dart';
import '../../../../domain/repositories/post/i_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/post/post_remote_service.dart';

@LazySingleton(as: IGetPosts)
class GetPostsImpl with ExecuteRepositoryImpl, ConnectionChecker implements IGetPosts {
  final IPostRemoteService _iPostRemoteService;

  GetPostsImpl(this._iPostRemoteService);

  @override
  Future<Either<BaseFailure, List<PostShortest>?>> call({int page = 1, int perPage = 10, String filter = ""}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<List<PostShortest>?>(
      action: () async {
        final response = await _iPostRemoteService.getPosts(page: page, perPage: perPage, filter: filter);
        if (response.postsShortest != null) {
          if (response.postsShortest?.isNotEmpty == true) {
            final posts = response.postsShortest?.map((e) => e.toDomain()).toList();
            return right(posts);
          }
        }
        return right([]);
      },
    );
  }
}

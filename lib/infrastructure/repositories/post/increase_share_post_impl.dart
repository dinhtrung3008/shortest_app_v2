import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/post_shortest/post_shortest.dart';
import '../../../../domain/repositories/post/i_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/post/post_remote_service.dart';

@LazySingleton(as: IIncreaseSharesPostCount)
class IncreaseSharesPostCountImpl with ExecuteRepositoryImpl, ConnectionChecker implements IIncreaseSharesPostCount {
  final IPostRemoteService _iPostRemoteService;

  IncreaseSharesPostCountImpl(this._iPostRemoteService);

  @override
  Future<Either<BaseFailure, PostShortest>> call({required String postId}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<PostShortest>(
      action: () async {
        final response = await _iPostRemoteService.increaseShares(postId: postId);
        return right(response.toDomain());
      },
    );
  }
}

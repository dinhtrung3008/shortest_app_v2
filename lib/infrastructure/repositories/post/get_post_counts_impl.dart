import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/repositories/post/i_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/post/post_remote_service.dart';

@LazySingleton(as: IGetPostCounts)
class GetPostCountsImpl with ExecuteRepositoryImpl, ConnectionChecker implements IGetPostCounts {
  final IPostRemoteService _iPostRemoteService;

  GetPostCountsImpl(this._iPostRemoteService);

  @override
  Future<Either<BaseFailure, int>> call() async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<int>(
      action: () async {
        final response = await _iPostRemoteService.getPostsCount();
        return right(response);
      },
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/post_shortest/post_shortest.dart';
import '../../../../domain/repositories/post/i_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/post/post_remote_service.dart';

@LazySingleton(as: IIncreaseLikesPostCount)
class IncreaseLikesPostCountImpl with ExecuteRepositoryImpl, ConnectionChecker implements IIncreaseLikesPostCount {
  final IPostRemoteService _iPostRemoteService;

  IncreaseLikesPostCountImpl(this._iPostRemoteService);

  @override
  Future<Either<BaseFailure, PostShortest>> call({required String postId}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<PostShortest>(
      action: () async {
        final response = await _iPostRemoteService.increaseLikes(postId: postId);
        return right(response.toDomain());
      },
    );
  }
}

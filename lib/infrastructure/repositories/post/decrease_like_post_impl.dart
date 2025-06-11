import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/post_shortest/post_shortest.dart';
import '../../../../domain/repositories/post/i_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/post/post_remote_service.dart';

@LazySingleton(as: IDecreaseLikesPostCount)
class DecreaseLikesPostCountImpl with ExecuteRepositoryImpl, ConnectionChecker implements IDecreaseLikesPostCount {
  final IPostRemoteService _iPostRemoteService;

  DecreaseLikesPostCountImpl(this._iPostRemoteService);

  @override
  Future<Either<BaseFailure, PostShortest>> call({required String postId}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<PostShortest>(
      action: () async {
        final response = await _iPostRemoteService.decreaseLikes(postId: postId);
        return right(response.toDomain());
      },
    );
  }
}

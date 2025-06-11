import 'package:dartz/dartz.dart';

import '../../../../domain/core/exceptions/exceptions.dart';
import '../../../../domain/core/failures/base_failure.dart';

mixin ExecuteRepositoryImpl {
  Future<Either<BaseFailure, T>> execute<T>({
    required Future<Either<BaseFailure, T>> Function() action,
  }) async {
    try {
      return await action();
    } on ServerException catch (server) {
      return left(BaseFailure.fromServerException(serverMessage: server.message));
    } on CacheException catch (cache) {
      return left(BaseFailure.fromCacheException(cacheMessage: cache.message ?? "Cache exception"));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/user_shortest/user_shortest.dart';
import '../../../../domain/repositories/search/i_search_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/current_user/current_user_remote_service.dart';

@LazySingleton(as: IRequestListSearch)
class RequestListSearchImpl with ExecuteRepositoryImpl, ConnectionChecker implements IRequestListSearch {
  final ICurrentUserRemoteService _iUserSupabaseService;

  RequestListSearchImpl(this._iUserSupabaseService);

  @override
  Future<Either<BaseFailure, List<UserShortest>?>> call({required String userName}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<List<UserShortest>?>(
      action: () async {
        final userRemote = await _iUserSupabaseService.getUsersSearchByUsername(userName: userName);
        if (userRemote.usersShortest != null) {
          if (userRemote.usersShortest?.isNotEmpty == true) {
            final users = userRemote.usersShortest?.map((e) => e.toDomain()).toList();
            return right(users);
          }
        }
        return right([]);
      },
    );
  }
}

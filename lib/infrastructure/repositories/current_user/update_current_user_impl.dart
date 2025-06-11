import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/user_shortest/user_shortest.dart';
import '../../../../domain/repositories/current_user/i_current_user_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/local/user/user_local_service.dart';
import '../../data/remote/current_user/current_user_remote_service.dart';
import '../../dtos/user_shortest/user_shortest_dto.dart';

@LazySingleton(as: IUpdateCurrentUser)
class UpdateCurrentUserImpl with ExecuteRepositoryImpl, ConnectionChecker implements IUpdateCurrentUser {
  final ICurrentUserRemoteService _iUserSupabaseService;
  final IUserLocalService _iUserLocalService;

  UpdateCurrentUserImpl(this._iUserSupabaseService, this._iUserLocalService);

  @override
  Future<Either<BaseFailure, UserShortest>> call({
    String? userName,
    String? bio,
    File? profileImage,
    File? coverImage,
  }) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<UserShortest>(
      action: () async {
        final userDTO = UserShortestDTO(username: userName, bio: bio);
        final response = await _iUserSupabaseService.updateUser(
          userDTO: userDTO,
          profileImage: profileImage,
          coverImage: coverImage,
        );

        await _iUserLocalService.caheCurrentUser(response.toDomain());

        return right(response.toDomain());
      },
    );
  }
}

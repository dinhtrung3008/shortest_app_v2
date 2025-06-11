import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../core/failures/base_failure.dart';
import '../../entities/user_shortest/user_shortest.dart';

abstract class IGetCurrentUserById {
  Future<Option<UserShortest?>> call();
}

abstract class IUpdateCurrentUser {
  Future<Either<BaseFailure, UserShortest>> call({
    String? userName,
    String? bio,
    File? profileImage,
    File? coverImage,
  });
}

abstract class IIncreaseFollowings {
  Future<Either<BaseFailure, UserShortest>> call({
    required List<String> currentUserFollowings,
    required String viewerUserId,
  });
}

abstract class IDecreaseFollowings {
  Future<Either<BaseFailure, UserShortest>> call({
    required List<String> currentUserFollowings,
    required String viewerUserId,
  });
}

abstract class IUpdateInterest {
  Future<Either<BaseFailure, Unit>> call(List<String> selectedInterests);
}

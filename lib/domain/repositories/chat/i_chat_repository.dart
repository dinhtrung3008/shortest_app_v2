import 'package:dartz/dartz.dart';

import '../../core/failures/base_failure.dart';
import '../../entities/chat/chat.dart';

abstract class ICreateChatRoom {
  Future<Either<BaseFailure, Chat>> call({required String lastMessage, required String viewerUserId});
}

abstract class IUpdateChatRoom {
  Future<Either<BaseFailure, Unit>> call({
    required String chatId,
    required String lastMessage,
  });
}

abstract class IDeleteChatRoom {
  Future<Either<BaseFailure, Unit>> call({required String chatId});
}

abstract class IMarkAsRead {
  Future<Either<BaseFailure, Unit>> call({required String chatId});
}

abstract class IMarkAsUnRead {
  Future<Either<BaseFailure, Unit>> call({required String chatId});
}

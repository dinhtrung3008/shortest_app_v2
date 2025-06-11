import 'package:dartz/dartz.dart';

import '../../core/failures/base_failure.dart';
import '../../entities/message/message.dart';

abstract class ICreateMessage {
  Future<Either<BaseFailure, Message>> call({
    required String chatId,
    required String type,
    required String content,
  });
}

abstract class IUpdateContentMessage {
  Future<Either<BaseFailure, Message>> call({
    required String messageId,
    required String content,
  });
}

abstract class IDeleteMessage {
  Future<Either<BaseFailure, Unit>> call({required String messageId});
}

abstract class ILikeMessage {
  Future<Either<BaseFailure, Message>> call({required String messageId, required bool isLiked});
}

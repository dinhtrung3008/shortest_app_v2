import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/message/message.dart';
import '../../../../domain/repositories/message/i_message_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/message/message_remote_service.dart';

@LazySingleton(as: ILikeMessage)
class LikeMessageImpl with ExecuteRepositoryImpl, ConnectionChecker implements ILikeMessage {
  final IMessageRemoteService _iMessageRemoteService;

  LikeMessageImpl(this._iMessageRemoteService);

  @override
  Future<Either<BaseFailure, Message>> call({required String messageId, required bool isLiked}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<Message>(
      action: () async {
        final response = await _iMessageRemoteService.likeMessage(messageId: messageId, isLiked: isLiked);
        return right(response.toDomain());
      },
    );
  }
}

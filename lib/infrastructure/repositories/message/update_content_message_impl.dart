import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/message/message.dart';
import '../../../../domain/repositories/message/i_message_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/message/message_remote_service.dart';

@LazySingleton(as: IUpdateContentMessage)
class UpdateContentMessageImpl with ExecuteRepositoryImpl, ConnectionChecker implements IUpdateContentMessage {
  final IMessageRemoteService _iMessageRemoteService;

  UpdateContentMessageImpl(this._iMessageRemoteService);

  @override
  Future<Either<BaseFailure, Message>> call({required String messageId, required String content}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<Message>(
      action: () async {
        final response = await _iMessageRemoteService.updateContentMessage(messageId: messageId, content: content);
        return right(response.toDomain());
      },
    );
  }
}

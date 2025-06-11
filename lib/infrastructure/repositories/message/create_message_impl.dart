import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/message/message.dart';
import '../../../../domain/repositories/message/i_message_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/message/message_remote_service.dart';

@LazySingleton(as: ICreateMessage)
class CreateMessageImpl with ExecuteRepositoryImpl, ConnectionChecker implements ICreateMessage {
  final IMessageRemoteService _iMessageRemoteService;

  CreateMessageImpl(this._iMessageRemoteService);

  @override
  Future<Either<BaseFailure, Message>> call({
    required String chatId,
    required String type,
    required String content,
  }) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<Message>(
      action: () async {
        final response = await _iMessageRemoteService.createMessage(chatId: chatId, type: type, content: content);
        return right(response.toDomain());
      },
    );
  }
}

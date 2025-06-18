import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/repositories/chat/i_chat_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/chat/chat_remote_service.dart';

@LazySingleton(as: IMarkAsUnRead)
class MarkAsUnReadImpl with ExecuteRepositoryImpl, ConnectionChecker implements IMarkAsUnRead {
  final IChatRemoteService _iChatRemoteService;

  MarkAsUnReadImpl(this._iChatRemoteService);

  @override
  Future<Either<BaseFailure, Unit>> call({required String chatId}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<Unit>(
      action: () async {
        await _iChatRemoteService.markAsUnRead(chatId: chatId);
        return right(unit);
      },
    );
  }
}

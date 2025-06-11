import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/chat/chat.dart';
import '../../../../domain/repositories/chat/i_chat_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_impl.dart';
import '../../data/remote/chat/chat_remote_service.dart';

@LazySingleton(as: ICreateChatRoom)
class CreateChatImpl with ExecuteRepositoryImpl, ConnectionChecker implements ICreateChatRoom {
  final IChatRemoteService _iChatRemoteService;

  CreateChatImpl(this._iChatRemoteService);
  @override
  Future<Either<BaseFailure, Chat>> call({required String lastMessage, required String viewerUserId}) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return execute<Chat>(
      action: () async {
        final response = await _iChatRemoteService.createChatRoom(lastMessage: lastMessage, viewerUserId: viewerUserId);
        return right(response.toDomain());
      },
    );
  }
}

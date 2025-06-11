import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../domain/entities/chat/chat.dart';
import '../../../../../presentation/core/constants/collection_names.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../base/base_subscription_service.dart';
import '../../../dtos/chat/chat_dto.dart';

@injectable
class ChatSubscriptionService extends BaseSubscriptionService<Chat, ChatDTO> {
  final FlutterSecureStorage _secureStorage;

  ChatSubscriptionService(PocketBase pocketBase, this._secureStorage)
      : super(
          pocketBase: pocketBase,
          collectionName: CollectionNames.chatsCollection,
          fromJson: (json) => ChatDTO.fromJson(json),
          toDomain: (dto) => dto.toDomain(),
        );

  Future<Unit> subscribeChats({
    int page = 1,
    int perPage = 10,
    String? filter,
    String? expand,
    String? sort,
  }) async {
    final currentUserId = await _secureStorage.read(key: UserConstants.idField);

    if (currentUserId == null) {
      throw CacheException(message: 'User id not found');
    }

    return await subscribe(
      filter: filter ?? "(users~'$currentUserId')",
      expand: expand ?? "users",
      sort: sort ?? "",
      page: page,
      perPage: perPage,
    );
  }
}

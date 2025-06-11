import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

import '../../../../../domain/entities/message/message.dart';
import '../../../../../presentation/core/constants/collection_names.dart';
import '../../../base/base_subscription_service.dart';
import '../../../dtos/message/message_dto.dart';

@injectable
class MessageSubscriptionService extends BaseSubscriptionService<Message, MessageDTO> {
  MessageSubscriptionService(PocketBase pocketBase)
      : super(
          pocketBase: pocketBase,
          collectionName: CollectionNames.messagesChatCollection,
          fromJson: (json) => MessageDTO.fromJson(json),
          toDomain: (dto) => dto.toDomain(),
        );

  Future<Unit> subscribeMessagesByChatId({
    required String chatId,
    int page = 1,
    int perPage = 15,
    String? filter,
    String? expand,
    String? sort,
    bool loadMore = false,
  }) async {
    return await subscribe(
      page: page,
      perPage: perPage,
      filter: filter ?? "(chatId='$chatId')",
      expand: expand ?? "sendById",
      sort: sort ?? "-sendingTime",
      loadMore: loadMore,
    );
  }

  void unsubscribeMessages() {
    unsubscribe();
  }
}

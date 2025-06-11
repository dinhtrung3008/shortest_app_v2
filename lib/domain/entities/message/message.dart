import 'package:freezed_annotation/freezed_annotation.dart';

import '../user_shortest/user_shortest.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const Message._();

  const factory Message({
    required String id,
    required String chatId,
    required String sendById,
    required String type,
    required String content,
    required String collectionId,
    required String collectionName,
    required String sendingTime,
    MessageExpandSendById? expand,
    required DateTime created,
    required DateTime updated,
    @Default(false) bool isLiked,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

@freezed
class MessageExpandSendById with _$MessageExpandSendById {
  const MessageExpandSendById._();

  const factory MessageExpandSendById({
    UserShortest? sendById,
  }) = _MessageExpandSendById;

  factory MessageExpandSendById.fromJson(Map<String, dynamic> json) => _$MessageExpandSendByIdFromJson(json);
}

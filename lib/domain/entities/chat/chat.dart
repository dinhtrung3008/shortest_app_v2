import 'package:freezed_annotation/freezed_annotation.dart';

import '../user_shortest/user_shortest.dart';

part 'chat.freezed.dart';

@freezed
abstract class Chat with _$Chat {
  const Chat._();

  const factory Chat({
    required String id,
    required String lastSenderId,
    required List<String> users,
    required String lastMessage,
    required LastMessages lastMessages,
    required DateTime created,
    required DateTime updated,
    required String collectionId,
    required String collectionName,
    ChatExpandUsersInChat? expand,
    required List<UsersInChat> usersInChat,
  }) = _Chat;

  bool get lastMessagesNotSendByMe => lastMessages.sendByUserId != id;
}

@freezed
abstract class ChatExpandUsersInChat with _$ChatExpandUsersInChat {
  const ChatExpandUsersInChat._();

  const factory ChatExpandUsersInChat({List<UserShortest>? users}) = _ChatExpandUsersInChat;
}

@freezed
abstract class LastMessages with _$LastMessages {
  const LastMessages._();

  const factory LastMessages({required String sendByUserId, required List<String> messages}) = _LastMessages;

  bool get messagesNotEmpty => messages.isNotEmpty;
  String get lengthOfLastMessages => messages.length.toString();
}

@freezed
abstract class UsersInChat with _$UsersInChat {
  const factory UsersInChat({required String userId, required bool isRead}) = _UsersInChat;
}

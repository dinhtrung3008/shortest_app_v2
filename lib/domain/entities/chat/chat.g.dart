// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Chat _$ChatFromJson(Map<String, dynamic> json) => _Chat(
  id: json['id'] as String,
  lastSenderId: json['lastSenderId'] as String,
  users: (json['users'] as List<dynamic>).map((e) => e as String).toList(),
  lastMessage: json['lastMessage'] as String,
  lastMessages: LastMessages.fromJson(
    json['lastMessages'] as Map<String, dynamic>,
  ),
  created: DateTime.parse(json['created'] as String),
  updated: DateTime.parse(json['updated'] as String),
  collectionId: json['collectionId'] as String,
  collectionName: json['collectionName'] as String,
  expand:
      json['expand'] == null
          ? null
          : ChatExpandUsersInChat.fromJson(
            json['expand'] as Map<String, dynamic>,
          ),
  usersInChat:
      (json['usersInChat'] as List<dynamic>)
          .map((e) => UsersInChat.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ChatToJson(_Chat instance) => <String, dynamic>{
  'id': instance.id,
  'lastSenderId': instance.lastSenderId,
  'users': instance.users,
  'lastMessage': instance.lastMessage,
  'lastMessages': instance.lastMessages,
  'created': instance.created.toIso8601String(),
  'updated': instance.updated.toIso8601String(),
  'collectionId': instance.collectionId,
  'collectionName': instance.collectionName,
  'expand': instance.expand,
  'usersInChat': instance.usersInChat,
};

_ChatExpandUsersInChat _$ChatExpandUsersInChatFromJson(
  Map<String, dynamic> json,
) => _ChatExpandUsersInChat(
  users:
      (json['users'] as List<dynamic>?)
          ?.map((e) => UserShortest.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ChatExpandUsersInChatToJson(
  _ChatExpandUsersInChat instance,
) => <String, dynamic>{'users': instance.users};

_LastMessages _$LastMessagesFromJson(Map<String, dynamic> json) =>
    _LastMessages(
      sendByUserId: json['sendByUserId'] as String,
      messages:
          (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$LastMessagesToJson(_LastMessages instance) =>
    <String, dynamic>{
      'sendByUserId': instance.sendByUserId,
      'messages': instance.messages,
    };

_UsersInChat _$UsersInChatFromJson(Map<String, dynamic> json) => _UsersInChat(
  userId: json['userId'] as String,
  isRead: json['isRead'] as bool,
);

Map<String, dynamic> _$UsersInChatToJson(_UsersInChat instance) =>
    <String, dynamic>{'userId': instance.userId, 'isRead': instance.isRead};

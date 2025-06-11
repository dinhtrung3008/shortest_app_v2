// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListChatResponseDTO _$ListChatResponseDTOFromJson(Map<String, dynamic> json) =>
    ListChatResponseDTO(
      page: (json['page'] as num?)?.toInt(),
      perPage: (json['perPage'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalItems: (json['totalItems'] as num?)?.toInt(),
      chats:
          (json['items'] as List<dynamic>?)
              ?.map((e) => ChatDTO.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ListChatResponseDTOToJson(
  ListChatResponseDTO instance,
) => <String, dynamic>{
  if (instance.page case final value?) 'page': value,
  if (instance.perPage case final value?) 'perPage': value,
  if (instance.totalPages case final value?) 'totalPages': value,
  if (instance.totalItems case final value?) 'totalItems': value,
  if (instance.chats case final value?) 'items': value,
};

ChatDTO _$ChatDTOFromJson(Map<String, dynamic> json) => ChatDTO(
  id: json['id'] as String?,
  lastSenderId: json['lastSenderId'] as String?,
  users: (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
  lastMessage: json['lastMessage'] as String?,
  lastMessages:
      json['lastMessages'] == null
          ? null
          : LastMessagesDTO.fromJson(
            json['lastMessages'] as Map<String, dynamic>,
          ),
  collectionId: json['collectionId'] as String?,
  collectionName: json['collectionName'] as String?,
  created:
      json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
  updated:
      json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
  expand:
      json['expand'] == null
          ? null
          : ChatExpandUsersInChatDTO.fromJson(
            json['expand'] as Map<String, dynamic>,
          ),
  usersInChat:
      (json['usersInChat'] as List<dynamic>?)
          ?.map((e) => UsersInChatDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ChatDTOToJson(ChatDTO instance) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.lastSenderId case final value?) 'lastSenderId': value,
  if (instance.users case final value?) 'users': value,
  if (instance.lastMessage case final value?) 'lastMessage': value,
  if (instance.lastMessages?.toJson() case final value?) 'lastMessages': value,
  if (instance.collectionId case final value?) 'collectionId': value,
  if (instance.collectionName case final value?) 'collectionName': value,
  if (instance.created?.toIso8601String() case final value?) 'created': value,
  if (instance.updated?.toIso8601String() case final value?) 'updated': value,
  if (instance.expand?.toJson() case final value?) 'expand': value,
  if (instance.usersInChat?.map((e) => e.toJson()).toList() case final value?)
    'usersInChat': value,
};

ChatExpandUsersInChatDTO _$ChatExpandUsersInChatDTOFromJson(
  Map<String, dynamic> json,
) => ChatExpandUsersInChatDTO(
  users:
      (json['users'] as List<dynamic>?)
          ?.map((e) => UserShortestDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ChatExpandUsersInChatDTOToJson(
  ChatExpandUsersInChatDTO instance,
) => <String, dynamic>{if (instance.users case final value?) 'users': value};

LastMessagesDTO _$LastMessagesDTOFromJson(Map<String, dynamic> json) =>
    LastMessagesDTO(
      sendByUserId: json['sendByUserId'] as String?,
      messages:
          (json['messages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$LastMessagesDTOToJson(LastMessagesDTO instance) =>
    <String, dynamic>{
      if (instance.sendByUserId case final value?) 'sendByUserId': value,
      if (instance.messages case final value?) 'messages': value,
    };

UsersInChatDTO _$UsersInChatDTOFromJson(Map<String, dynamic> json) =>
    UsersInChatDTO(
      userId: json['userId'] as String?,
      isRead: json['isRead'] as bool?,
    );

Map<String, dynamic> _$UsersInChatDTOToJson(UsersInChatDTO instance) =>
    <String, dynamic>{
      if (instance.userId case final value?) 'userId': value,
      if (instance.isRead case final value?) 'isRead': value,
    };

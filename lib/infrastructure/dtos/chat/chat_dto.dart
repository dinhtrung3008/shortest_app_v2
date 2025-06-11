import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/chat/chat.dart';
import '../user_shortest/user_shortest_dto.dart';

part 'chat_dto.g.dart';

@JsonSerializable()
class ListChatResponseDTO {
  @JsonKey(name: 'page', includeIfNull: false)
  int? page;

  @JsonKey(name: 'perPage', includeIfNull: false)
  int? perPage;

  @JsonKey(name: 'totalPages', includeIfNull: false)
  int? totalPages;

  @JsonKey(name: 'totalItems', includeIfNull: false)
  int? totalItems;

  @JsonKey(name: 'items', includeIfNull: false)
  List<ChatDTO>? chats;

  ListChatResponseDTO({
    this.page,
    this.perPage,
    this.totalPages,
    this.totalItems,
    this.chats,
  });

  ListChatResponseDTO copyWith({
    int? page,
    int? perPage,
    int? totalPages,
    int? totalItems,
    List<ChatDTO>? chats,
  }) {
    return ListChatResponseDTO(
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      totalPages: totalPages ?? this.totalPages,
      totalItems: totalItems ?? this.totalItems,
      chats: chats ?? this.chats,
    );
  }

  factory ListChatResponseDTO.fromJson(Map<String, dynamic> json) => _$ListChatResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ListChatResponseDTOToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChatDTO {
  @JsonKey(name: 'id', includeIfNull: false)
  String? id;

  @JsonKey(name: 'lastSenderId', includeIfNull: false)
  String? lastSenderId;

  @JsonKey(name: 'users', includeIfNull: false)
  List<String>? users;

  @JsonKey(name: 'lastMessage', includeIfNull: false)
  String? lastMessage;

  @JsonKey(name: 'lastMessages', includeIfNull: false)
  LastMessagesDTO? lastMessages;

  @JsonKey(name: 'collectionId', includeIfNull: false)
  String? collectionId;

  @JsonKey(name: 'collectionName', includeIfNull: false)
  String? collectionName;

  @JsonKey(name: 'created', includeIfNull: false)
  DateTime? created;

  @JsonKey(name: 'updated', includeIfNull: false)
  DateTime? updated;

  @JsonKey(name: 'expand', includeIfNull: false)
  ChatExpandUsersInChatDTO? expand;

  @JsonKey(name: 'usersInChat', includeIfNull: false)
  List<UsersInChatDTO>? usersInChat;

  ChatDTO({
    this.id,
    this.lastSenderId,
    this.users,
    this.lastMessage,
    this.lastMessages,
    this.collectionId,
    this.collectionName,
    this.created,
    this.updated,
    this.expand,
    this.usersInChat,
  });

  Chat toDomain() {
    return Chat(
      id: id ?? '',
      lastSenderId: lastSenderId ?? '',
      users: users ?? [],
      lastMessage: lastMessage ?? '',
      lastMessages: lastMessages!.toDomain(),
      collectionId: collectionId ?? '',
      collectionName: collectionName ?? '',
      created: created ?? DateTime.now(),
      updated: updated ?? DateTime.now(),
      expand: expand?.toDomain(),
      usersInChat: usersInChat!.map((user) => user.toDomain()).toList(),
    );
  }

  factory ChatDTO.fromDomain(Chat chat) {
    return ChatDTO(
      id: chat.id,
      lastSenderId: chat.lastSenderId,
      users: chat.users,
      lastMessage: chat.lastMessage,
      lastMessages: LastMessagesDTO.fromDomain(chat.lastMessages),
      collectionId: chat.collectionId,
      collectionName: chat.collectionName,
      created: chat.created,
      updated: chat.updated,
      expand: ChatExpandUsersInChatDTO.fromDomain(chat.expand!),
      usersInChat: chat.usersInChat.map((user) => UsersInChatDTO.fromDomain(user)).toList(),
    );
  }

  factory ChatDTO.fromJson(Map<String, dynamic> json) => _$ChatDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ChatDTOToJson(this);
}

@JsonSerializable()
class ChatExpandUsersInChatDTO {
  @JsonKey(name: 'users', includeIfNull: false)
  List<UserShortestDTO>? users;

  ChatExpandUsersInChatDTO({this.users});

  ChatExpandUsersInChatDTO copyWith({
    List<UserShortestDTO>? users,
  }) {
    return ChatExpandUsersInChatDTO(
      users: users ?? this.users,
    );
  }

  ChatExpandUsersInChat toDomain() {
    return ChatExpandUsersInChat(users: users?.map((e) => e.toDomain()).toList());
  }

  factory ChatExpandUsersInChatDTO.fromDomain(ChatExpandUsersInChat expand) {
    return ChatExpandUsersInChatDTO(users: expand.users?.map((e) => UserShortestDTO.fromDomain(e)).toList());
  }

  factory ChatExpandUsersInChatDTO.fromJson(Map<String, dynamic> json) => _$ChatExpandUsersInChatDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ChatExpandUsersInChatDTOToJson(this);
}

@JsonSerializable()
class LastMessagesDTO {
  @JsonKey(name: 'sendByUserId', includeIfNull: false)
  String? sendByUserId;

  @JsonKey(name: 'messages', includeIfNull: false)
  List<String>? messages;

  LastMessagesDTO({this.sendByUserId, this.messages});

  LastMessagesDTO copyWith({
    String? sendByUserId,
    List<String>? messages,
  }) {
    return LastMessagesDTO(
      sendByUserId: sendByUserId ?? this.sendByUserId,
      messages: messages ?? this.messages,
    );
  }

  LastMessages toDomain() {
    return LastMessages(sendByUserId: sendByUserId ?? '', messages: messages ?? []);
  }

  factory LastMessagesDTO.fromDomain(LastMessages lastMessages) {
    return LastMessagesDTO(
      sendByUserId: lastMessages.sendByUserId,
      messages: lastMessages.messages,
    );
  }

  factory LastMessagesDTO.fromJson(Map<String, dynamic> json) => _$LastMessagesDTOFromJson(json);

  Map<String, dynamic> toJson() => _$LastMessagesDTOToJson(this);
}

@JsonSerializable()
class UsersInChatDTO {
  @JsonKey(name: 'userId', includeIfNull: false)
  String? userId;

  @JsonKey(name: 'isRead', includeIfNull: false)
  bool? isRead;

  UsersInChatDTO({this.userId, this.isRead});

  UsersInChatDTO copyWith({
    String? userId,
    bool? isRead,
  }) {
    return UsersInChatDTO(
      userId: userId ?? this.userId,
      isRead: isRead ?? this.isRead,
    );
  }

  UsersInChat toDomain() {
    return UsersInChat(
      userId: userId ?? '',
      isRead: isRead ?? false,
    );
  }

  factory UsersInChatDTO.fromDomain(UsersInChat usersInChat) {
    return UsersInChatDTO(
      userId: usersInChat.userId,
      isRead: usersInChat.isRead,
    );
  }

  factory UsersInChatDTO.fromJson(Map<String, dynamic> json) => _$UsersInChatDTOFromJson(json);

  Map<String, dynamic> toJson() => _$UsersInChatDTOToJson(this);
}

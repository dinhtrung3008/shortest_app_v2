import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/message/message.dart';
import '../user_shortest/user_shortest_dto.dart';

part 'message_dto.g.dart';

@JsonSerializable()
class ListMessageResponseDTO {
  @JsonKey(name: 'page', includeIfNull: false)
  int? page;

  @JsonKey(name: 'perPage', includeIfNull: false)
  int? perPage;

  @JsonKey(name: 'totalPages', includeIfNull: false)
  int? totalPages;

  @JsonKey(name: 'totalItems', includeIfNull: false)
  int? totalItems;

  @JsonKey(name: 'items', includeIfNull: false)
  List<MessageDTO>? messages;

  ListMessageResponseDTO({
    this.page,
    this.perPage,
    this.totalPages,
    this.totalItems,
    this.messages,
  });

  ListMessageResponseDTO copyWith({
    int? page,
    int? perPage,
    int? totalPages,
    int? totalItems,
    List<MessageDTO>? messages,
  }) {
    return ListMessageResponseDTO(
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      totalPages: totalPages ?? this.totalPages,
      totalItems: totalItems ?? this.totalItems,
      messages: messages ?? this.messages,
    );
  }

  factory ListMessageResponseDTO.fromJson(Map<String, dynamic> json) => _$ListMessageResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ListMessageResponseDTOToJson(this);
}

@JsonSerializable()
class MessageDTO {
  @JsonKey(name: 'id', includeIfNull: false)
  String? id;

  @JsonKey(name: 'chatId', includeIfNull: false)
  String? chatId;

  @JsonKey(name: 'sendById', includeIfNull: false)
  String? sendById;

  @JsonKey(name: 'type', includeIfNull: false)
  String? type;

  @JsonKey(name: 'content', includeIfNull: false)
  String? content;

  @JsonKey(name: 'collectionId', includeIfNull: false)
  String? collectionId;

  @JsonKey(name: 'collectionName', includeIfNull: false)
  String? collectionName;

  @JsonKey(name: 'sendingTime', includeIfNull: false)
  String? sendingTime;

  @JsonKey(name: 'created', includeIfNull: false)
  DateTime? created;

  @JsonKey(name: 'updated', includeIfNull: false)
  DateTime? updated;

  @JsonKey(name: 'expand', includeIfNull: false)
  MessageExpandSendByIdDTO? expand;

  @JsonKey(name: 'isLiked', includeIfNull: false)
  bool? isLiked;

  MessageDTO({
    this.id,
    this.chatId,
    this.sendById,
    this.type,
    this.content,
    this.collectionId,
    this.collectionName,
    this.sendingTime,
    this.created,
    this.updated,
    this.expand,
    this.isLiked,
  });

  factory MessageDTO.fromDomain(Message chat) {
    return MessageDTO(
      id: chat.id,
      chatId: chat.chatId,
      sendById: chat.sendById,
      type: chat.type,
      content: chat.content,
      collectionId: chat.collectionId,
      collectionName: chat.collectionName,
      sendingTime: chat.sendingTime,
      created: chat.created,
      updated: chat.updated,
      expand: MessageExpandSendByIdDTO.fromDomain(chat.expand!),
      isLiked: chat.isLiked,
    );
  }

  Message toDomain() {
    return Message(
      id: id ?? '',
      chatId: chatId ?? '',
      sendById: sendById ?? '',
      type: type ?? '',
      content: content ?? '',
      collectionId: collectionId ?? '',
      collectionName: collectionName ?? '',
      sendingTime: sendingTime ?? '',
      created: created ?? DateTime.now(),
      updated: updated ?? DateTime.now(),
      expand: expand?.toDomain(),
      isLiked: isLiked ?? false,
    );
  }

  factory MessageDTO.fromJson(Map<String, dynamic> json) => _$MessageDTOFromJson(json);

  Map<String, dynamic> toJson() => _$MessageDTOToJson(this);
}

@JsonSerializable()
class MessageExpandSendByIdDTO {
  @JsonKey(name: 'sendById', includeIfNull: false)
  UserShortestDTO? sendById;

  MessageExpandSendByIdDTO({this.sendById});

  MessageExpandSendByIdDTO copyWith({
    UserShortestDTO? sendById,
  }) {
    return MessageExpandSendByIdDTO(
      sendById: sendById ?? this.sendById,
    );
  }

  MessageExpandSendById toDomain() {
    return MessageExpandSendById(sendById: sendById?.toDomain());
  }

  factory MessageExpandSendByIdDTO.fromDomain(MessageExpandSendById expand) {
    return MessageExpandSendByIdDTO(
      sendById: UserShortestDTO.fromDomain(expand.sendById!),
    );
  }

  factory MessageExpandSendByIdDTO.fromJson(Map<String, dynamic> json) => _$MessageExpandSendByIdDTOFromJson(json);

  Map<String, dynamic> toJson() => _$MessageExpandSendByIdDTOToJson(this);
}

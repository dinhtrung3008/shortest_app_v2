// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListMessageResponseDTO _$ListMessageResponseDTOFromJson(
  Map<String, dynamic> json,
) => ListMessageResponseDTO(
  page: (json['page'] as num?)?.toInt(),
  perPage: (json['perPage'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
  totalItems: (json['totalItems'] as num?)?.toInt(),
  messages:
      (json['items'] as List<dynamic>?)
          ?.map((e) => MessageDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ListMessageResponseDTOToJson(
  ListMessageResponseDTO instance,
) => <String, dynamic>{
  if (instance.page case final value?) 'page': value,
  if (instance.perPage case final value?) 'perPage': value,
  if (instance.totalPages case final value?) 'totalPages': value,
  if (instance.totalItems case final value?) 'totalItems': value,
  if (instance.messages case final value?) 'items': value,
};

MessageDTO _$MessageDTOFromJson(Map<String, dynamic> json) => MessageDTO(
  id: json['id'] as String?,
  chatId: json['chatId'] as String?,
  sendById: json['sendById'] as String?,
  type: json['type'] as String?,
  content: json['content'] as String?,
  collectionId: json['collectionId'] as String?,
  collectionName: json['collectionName'] as String?,
  sendingTime: json['sendingTime'] as String?,
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
          : MessageExpandSendByIdDTO.fromJson(
            json['expand'] as Map<String, dynamic>,
          ),
  isLiked: json['isLiked'] as bool?,
);

Map<String, dynamic> _$MessageDTOToJson(
  MessageDTO instance,
) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.chatId case final value?) 'chatId': value,
  if (instance.sendById case final value?) 'sendById': value,
  if (instance.type case final value?) 'type': value,
  if (instance.content case final value?) 'content': value,
  if (instance.collectionId case final value?) 'collectionId': value,
  if (instance.collectionName case final value?) 'collectionName': value,
  if (instance.sendingTime case final value?) 'sendingTime': value,
  if (instance.created?.toIso8601String() case final value?) 'created': value,
  if (instance.updated?.toIso8601String() case final value?) 'updated': value,
  if (instance.expand case final value?) 'expand': value,
  if (instance.isLiked case final value?) 'isLiked': value,
};

MessageExpandSendByIdDTO _$MessageExpandSendByIdDTOFromJson(
  Map<String, dynamic> json,
) => MessageExpandSendByIdDTO(
  sendById:
      json['sendById'] == null
          ? null
          : UserShortestDTO.fromJson(json['sendById'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MessageExpandSendByIdDTOToJson(
  MessageExpandSendByIdDTO instance,
) => <String, dynamic>{
  if (instance.sendById case final value?) 'sendById': value,
};

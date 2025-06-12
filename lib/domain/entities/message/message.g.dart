// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
  id: json['id'] as String,
  chatId: json['chatId'] as String,
  sendById: json['sendById'] as String,
  type: json['type'] as String,
  content: json['content'] as String,
  collectionId: json['collectionId'] as String,
  collectionName: json['collectionName'] as String,
  sendingTime: json['sendingTime'] as String,
  expand:
      json['expand'] == null
          ? null
          : MessageExpandSendById.fromJson(
            json['expand'] as Map<String, dynamic>,
          ),
  created: DateTime.parse(json['created'] as String),
  updated: DateTime.parse(json['updated'] as String),
  isLiked: json['isLiked'] as bool? ?? false,
);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'id': instance.id,
  'chatId': instance.chatId,
  'sendById': instance.sendById,
  'type': instance.type,
  'content': instance.content,
  'collectionId': instance.collectionId,
  'collectionName': instance.collectionName,
  'sendingTime': instance.sendingTime,
  'expand': instance.expand,
  'created': instance.created.toIso8601String(),
  'updated': instance.updated.toIso8601String(),
  'isLiked': instance.isLiked,
};

_MessageExpandSendById _$MessageExpandSendByIdFromJson(
  Map<String, dynamic> json,
) => _MessageExpandSendById(
  sendById:
      json['sendById'] == null
          ? null
          : UserShortest.fromJson(json['sendById'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MessageExpandSendByIdToJson(
  _MessageExpandSendById instance,
) => <String, dynamic>{'sendById': instance.sendById};

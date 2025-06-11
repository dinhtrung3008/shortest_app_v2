// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationDTO _$AuthenticationDTOFromJson(Map<String, dynamic> json) =>
    AuthenticationDTO(
      token: json['token'] as String?,
      user:
          json['record'] == null
              ? null
              : UserShortestDTO.fromJson(
                json['record'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$AuthenticationDTOToJson(AuthenticationDTO instance) =>
    <String, dynamic>{
      if (instance.token case final value?) 'token': value,
      if (instance.user case final value?) 'record': value,
    };

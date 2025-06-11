import 'package:json_annotation/json_annotation.dart';

import '../user_shortest/user_shortest_dto.dart';

part 'authentication_dto.g.dart';

@JsonSerializable()
class AuthenticationDTO {
  @JsonKey(name: 'token', includeIfNull: false)
  final String? token;

  @JsonKey(name: 'record', includeIfNull: false)
  final UserShortestDTO? user;

  AuthenticationDTO({
    this.token,
    this.user,
  });

  factory AuthenticationDTO.fromJson(Map<String, dynamic> json) => _$AuthenticationDTOFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationDTOToJson(this);
}

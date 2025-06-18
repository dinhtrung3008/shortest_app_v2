import 'package:json_annotation/json_annotation.dart';

import '../user_shortest/user_shortest_dto.dart';

part 'auth_dto.g.dart';

@JsonSerializable()
class AuthDTO {
  @JsonKey(name: 'token', includeIfNull: false)
  final String? token;

  @JsonKey(name: 'record', includeIfNull: false)
  final UserShortestDTO? user;

  AuthDTO({this.token, this.user});

  factory AuthDTO.fromJson(Map<String, dynamic> json) => _$AuthDTOFromJson(json);

  Map<String, dynamic> toJson() => _$AuthDTOToJson(this);
}

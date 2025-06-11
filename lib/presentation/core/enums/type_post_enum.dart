import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum TypePostEnum {
  @JsonValue('self')
  self,

  @JsonValue('shared')
  shared,
}

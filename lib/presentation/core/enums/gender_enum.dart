import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum GenderEnum {
  @JsonValue('male')
  male,

  @JsonValue('female')
  female,

  @JsonValue('other')
  other,
}

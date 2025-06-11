import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum VisibilityEnum {
  @JsonValue('public')
  public,

  @JsonValue('private')
  private,

  @JsonValue('except')
  except,
}

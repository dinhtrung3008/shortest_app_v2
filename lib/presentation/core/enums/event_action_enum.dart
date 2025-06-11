enum EventActionEnum { create, delete, update }

extension EventActionEnumExtension on EventActionEnum {
  static EventActionEnum? fromString(String action) {
    switch (action) {
      case 'create':
        return EventActionEnum.create;
      case 'update':
        return EventActionEnum.update;
      case 'delete':
        return EventActionEnum.delete;
      default:
        return null;
    }
  }
}

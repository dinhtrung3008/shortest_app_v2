import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:pocketbase/pocketbase.dart';

import '../../../presentation/core/enums/event_action_enum.dart';

abstract class BaseSubscriptionService<T, D> {
  final PocketBase _pocketBase;
  final String collectionName;
  final T Function(D dto) toDomain;
  final D Function(Map<String, dynamic> json) fromJson;

  BaseSubscriptionService({
    required PocketBase pocketBase,
    required this.collectionName,
    required this.toDomain,
    required this.fromJson,
  }) : _pocketBase = pocketBase;

  final StreamController<List<T>> _streamController = StreamController.broadcast();

  Stream<List<T>> get stream => _streamController.stream;

  final List<T> _items = [];

  Future<Unit> subscribe({
    int page = 1,
    int perPage = 15,
    String? filter,
    String? expand,
    String? sort,
    bool loadMore = false,
  }) async {
    final result = await _pocketBase.collection(collectionName).getList(
          filter: filter,
          expand: expand,
          sort: sort,
          page: page,
          perPage: perPage,
        );

    if (!loadMore) {
      _items.clear();
    }

    for (final record in result.items) {
      final dto = fromJson(record.toJson());
      final item = toDomain(dto);

      if (!_items.any((existingItem) => _getItemId(existingItem) == _getItemId(item))) {
        _items.add(item);
      }
    }

    _streamController.add(_items);

    if (!loadMore) {
      _pocketBase.collection(collectionName).subscribe(
        '*',
        (event) {
          final record = event.record;

          if (record == null) return;

          final dto = fromJson(record.toJson());
          final item = toDomain(dto);

          final actionEnum = EventActionEnumExtension.fromString(event.action);

          switch (actionEnum) {
            case EventActionEnum.create:
              if (!_items.any((existingItem) => _getItemId(existingItem) == _getItemId(item))) {
                _items.add(item);
              }
              break;
            case EventActionEnum.update:
              _updateItem(item);
              break;
            case EventActionEnum.delete:
              _removeItem(item);
              break;
            default:
              break;
          }

          _streamController.add(_items);
        },
        filter: filter,
        expand: expand,
      );
    }

    return unit;
  }

  void unsubscribe() {
    _items.clear();
    _pocketBase.collection(collectionName).unsubscribe('*');
    _streamController.close();
  }

  void _updateItem(T updatedItem) {
    final index = _items.indexWhere((item) => _getItemId(item) == _getItemId(updatedItem));
    if (index != -1) {
      _items[index] = updatedItem;
    }
  }

  void _removeItem(T itemToDelete) {
    _items.removeWhere((item) => _getItemId(item) == _getItemId(itemToDelete));
  }

  String _getItemId(T item) {
    return (item as dynamic).id;
  }
}

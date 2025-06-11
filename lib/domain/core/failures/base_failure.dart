import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_failure.freezed.dart';

@freezed
abstract class BaseFailure with _$BaseFailure {
  const factory BaseFailure.sessionExpired() = _SessionExpired;
  const factory BaseFailure.fromServerException({String? serverMessage}) = _FromServerException;
  const factory BaseFailure.fromCacheException({String? cacheMessage}) = _FromCacheException;
  const factory BaseFailure.offline() = _Offline;
  const factory BaseFailure.unexpected() = _Unexpected;
}

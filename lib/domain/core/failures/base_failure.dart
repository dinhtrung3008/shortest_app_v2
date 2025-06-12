import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_failure.freezed.dart';

enum ErrorCode { sessionExpired, serverError, cacheError, noConnection, unexpected }

@freezed
abstract class BaseFailure with _$BaseFailure {
  const factory BaseFailure.sessionExpired({String? message, @Default(ErrorCode.sessionExpired) ErrorCode code}) =
      SessionExpired;

  const factory BaseFailure.fromServerException({
    String? serverMessage,
    @Default(ErrorCode.serverError) ErrorCode code,
  }) = FromServerException;

  const factory BaseFailure.fromCacheException({String? cacheMessage, @Default(ErrorCode.cacheError) ErrorCode code}) =
      FromCacheException;

  const factory BaseFailure.offline({String? message, @Default(ErrorCode.noConnection) ErrorCode code}) = Offline;

  const factory BaseFailure.unexpected({String? message, @Default(ErrorCode.unexpected) ErrorCode code}) = Unexpected;
}

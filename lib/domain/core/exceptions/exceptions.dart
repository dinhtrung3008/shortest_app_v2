class ServerException implements Exception {
  final String? message;
  final int? statusCode;
  final String? errorCode;
  final Map<String, dynamic>? data;

  ServerException({
    this.message,
    this.statusCode,
    this.errorCode,
    this.data,
  });

  // Factory constructors
  factory ServerException.network(String message) => ServerException(
        message: message,
        errorCode: 'NETWORK_ERROR',
      );

  factory ServerException.auth(String message, int? statusCode) => ServerException(
        message: message,
        statusCode: statusCode,
        errorCode: 'AUTH_ERROR',
      );

  factory ServerException.validation(String message, dynamic data) => ServerException(
        message: message,
        statusCode: 422,
        errorCode: 'VALIDATION_ERROR',
        data: data is Map<String, dynamic> ? data : null,
      );

  factory ServerException.notFound(String message) => ServerException(
        message: message,
        statusCode: 404,
        errorCode: 'NOT_FOUND',
      );

  @override
  String toString() => 'ServerException: ${message ?? 'Unknown error'}';
}

class CacheException implements Exception {
  final String? message;

  CacheException({this.message});

  @override
  String toString() => 'CacheException: ${message ?? 'Cache error'}';
}
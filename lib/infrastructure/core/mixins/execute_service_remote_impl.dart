import 'package:dio/dio.dart';

import '../../../../domain/core/exceptions/exceptions.dart';

mixin ExecuteRemoteServiceImpl {
  Future<T> handleResponse<T>(Future<Response> request, {required T Function(Response response) onSuccess}) async {
    final response = await request;
    if (response.statusCode == 200 || response.statusCode == 201 || response.statusCode == 204) {
      return onSuccess(response);
    } else {
      throw ServerException(message: response.data?['message'] ?? 'Server error occurred.');
    }
  }

  Future<T> handleResponseAsync<T>(
    Future<Response> request, {
    required Future<T> Function(Response response) onSuccess,
  }) async {
    final response = await request;
    if (response.statusCode == 200 || response.statusCode == 201 || response.statusCode == 204) {
      return await onSuccess(response);
    } else {
      throw ServerException(message: response.data?['message'] ?? 'Server error occurred.');
    }
  }
}

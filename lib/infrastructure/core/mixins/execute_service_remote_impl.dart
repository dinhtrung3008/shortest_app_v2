import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';

import '../../../../domain/core/exceptions/exceptions.dart';

mixin ExecuteRemoteServiceImpl {
  Future<T> execute<T>(Future<Response> request, {required T Function(Response response) onSuccess}) async {
    final response = await request;
    if (response.statusCode == 200 || response.statusCode == 201 || response.statusCode == 204) {
      return onSuccess(response);
    } else {
      throw ServerException(message: response.data?['message'] ?? 'Server error occurred.');
    }
  }

  Future<T> executeApiServiceAsync<T>(
    Future<HttpResponse> request, {
    required Future<T> Function(HttpResponse response) onSuccess,
  }) async {
    try {
      final response = await request;
      if (response.response.statusCode == 200 ||
          response.response.statusCode == 201 ||
          response.response.statusCode == 204) {
        return await onSuccess(response);
      } else {
        throw ServerException(message: response.data?['message'] ?? 'Server error occurred.');
      }
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? 'Server error occurred.');
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  Future<T> executeApiService<T>(
    Future<HttpResponse> request, {
    required T Function(HttpResponse response) onSuccess,
  }) async {
    try {
      final response = await request;
      if (response.response.statusCode == 200 ||
          response.response.statusCode == 201 ||
          response.response.statusCode == 204) {
        return onSuccess(response);
      } else {
        throw ServerException(message: response.data?['message'] ?? 'Server error occurred.');
      }
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? 'Server error occurred.');
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}

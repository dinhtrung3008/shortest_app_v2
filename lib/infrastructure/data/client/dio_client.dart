import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/exceptions/exceptions.dart';

abstract class IDioClient {
  Future<Response> getRequest(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    FormData? formData,
    bool isMultiPart = false,
  });

  Future<Response> postRequest(
    String endpoint, {
    Map<String, dynamic>? bodyParams,
    Map<String, dynamic>? queryParams,
    FormData? formData,
    bool isMultiPart = false,
  });

  Future<Response> deleteRequest(
    String endpoint, {
    Map<String, dynamic>? bodyParams,
    FormData? formData,
    bool isMultiPart = false,
  });

  Future<Response> patchRequest(
    String endpoint, {
    Map<String, dynamic>? bodyParams,
    Map<String, dynamic>? queryParams,
    FormData? formData,
    bool isMultiPart = false,
  });

  Future<Response<ResponseBody>> getRequestStream(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
  });

  Future<Response<ResponseBody>> postRequestStream(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? bodyParams,
    CancelToken? cancelToken,
  });
}

@LazySingleton(as: IDioClient)
class DioClientImpl implements IDioClient {
  final Dio _dio;

  DioClientImpl(this._dio);

  @override
  Future<Response> getRequest(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    FormData? formData,
    bool isMultiPart = false,
    String? token,
  }) async {
    try {
      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
        data: formData ?? {},
        options: Options(
          contentType: isMultiPart ? 'multipart/form-data' : 'application/json',
        ),
      );
      return response;
    } on DioException catch (e) {
      return Response(
        data: e.response?.data,
        statusCode: e.response?.statusCode,
        requestOptions: RequestOptions(path: endpoint, method: 'GET'),
      );
    }
  }

  @override
  Future<Response> postRequest(
    String endpoint, {
    Map<String, dynamic>? bodyParams,
    Map<String, dynamic>? queryParams,
    FormData? formData,
    bool isMultiPart = false,
  }) async {
    try {
      final response = await _dio.post(
        endpoint,
        data: formData ?? bodyParams ?? {},
        queryParameters: queryParams ?? {},
        options: Options(
          contentType: isMultiPart ? 'multipart/form-data' : 'application/json',
        ),
      );
      return response;
    } on DioException catch (e) {
      return Response(
        data: e.response?.data,
        statusCode: e.response?.statusCode,
        requestOptions: RequestOptions(path: endpoint, method: 'POST'),
      );
    }
  }

  @override
  Future<Response> deleteRequest(
    String endpoint, {
    Map<String, dynamic>? bodyParams,
    FormData? formData,
    bool isMultiPart = false,
  }) async {
    try {
      final response = await _dio.delete(
        endpoint,
        data: formData ?? bodyParams ?? {},
        options: Options(
          contentType: isMultiPart ? 'multipart/form-data' : 'application/json',
        ),
      );
      return response;
    } on DioException catch (e) {
      return Response(
        data: e.response?.data,
        statusCode: e.response?.statusCode,
        requestOptions: RequestOptions(path: endpoint, method: 'DELETE'),
      );
    }
  }

  @override
  Future<Response> patchRequest(
    String endpoint, {
    Map<String, dynamic>? bodyParams,
    Map<String, dynamic>? queryParams,
    FormData? formData,
    bool isMultiPart = false,
  }) async {
    try {
      final response = await _dio.patch(
        endpoint,
        data: formData ?? bodyParams ?? {},
        queryParameters: queryParams ?? {},
        options: Options(
          contentType: isMultiPart ? 'multipart/form-data' : 'application/json',
        ),
      );
      return response;
    } on DioException catch (e) {
      return Response(
        data: e.response?.data,
        statusCode: e.response?.statusCode,
        requestOptions: RequestOptions(path: endpoint, method: 'PATCH'),
      );
    }
  }

  @override
  Future<Response<ResponseBody>> getRequestStream(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
  }) async {
    try {
      final options = Options(
        headers: {
          "Accept": "text/event-stream",
          "Cache-Control": "no-cache",
        },
        responseType: ResponseType.stream,
      );

      final response = await _dio.get<ResponseBody>(
        endpoint,
        queryParameters: queryParams,
        options: options,
        cancelToken: cancelToken,
      );

      return response;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<Response<ResponseBody>> postRequestStream(
    String endpoint, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? bodyParams,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dio.post<ResponseBody>(
        endpoint,
        data: bodyParams,
        queryParameters: queryParams,
        cancelToken: cancelToken,
      );

      return response;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}

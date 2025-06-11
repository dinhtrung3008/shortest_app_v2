import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../../presentation/core/constants/collection_names.dart';
import '../../../../presentation/core/constants/global_constants.dart';
import '../../../../presentation/core/constants/user_constants.dart';

class RefreshTokenInterceptor extends Interceptor {
  final Dio _dio;
  final FlutterSecureStorage _secureStorage;

  RefreshTokenInterceptor(this._dio, this._secureStorage);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _secureStorage.read(key: GlobalConstants.accessToken);

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      try {
        final accessToken = await _secureStorage.read(key: GlobalConstants.accessToken);

        if (accessToken != null) {
          final response = await _dio.post(
            '/api/collections/${CollectionNames.usersCollection}/auth-refresh',
            options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
          );

          final newToken = response.data['token'];
          await _secureStorage.write(key: GlobalConstants.accessToken, value: newToken);

          final retryOptions = err.requestOptions;
          retryOptions.headers['Authorization'] = 'Bearer $newToken';
          final retryResponse = await _dio.fetch(retryOptions);

          return handler.resolve(retryResponse);
        }
      } catch (refreshError) {
        if (refreshError is DioException && refreshError.response?.statusCode == 401) {
          await _secureStorage.delete(key: GlobalConstants.accessToken);
          await _secureStorage.delete(key: UserConstants.cachedUserKey);
          await _secureStorage.delete(key: UserConstants.idField);
        }
      }
    }

    super.onError(err, handler);
  }
}

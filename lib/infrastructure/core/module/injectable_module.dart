import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

import '../../../../presentation/core/constants/global_constants.dart';
import '../interceptors/refresh_token_interceptor.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();

  @lazySingleton
  PocketBase get pocketbase =>
      PocketBase(Platform.isAndroid ? GlobalConstants.pockerBaseUrlAndroid : GlobalConstants.pockerBaseUrlIOS);

  @lazySingleton
  Dio get dio {
    final dio = Dio(
      BaseOptions(
        baseUrl: Platform.isAndroid ? GlobalConstants.pockerBaseUrlAndroid : GlobalConstants.pockerBaseUrlIOS,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 10),
      ),
    );

    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      error: true,
      logPrint: (object) {},
    ));

    dio.interceptors.add(RefreshTokenInterceptor(dio, const FlutterSecureStorage()));

    return dio;
  }
}

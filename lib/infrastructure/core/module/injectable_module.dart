import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../presentation/core/constants/global_constants.dart';
import '../interceptors/refresh_token_interceptor.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();

  @lazySingleton
  PocketBase get pocketbase =>
      PocketBase(Platform.isAndroid ? GlobalConstants.pockerBaseUrlAndroid : GlobalConstants.pockerBaseUrlIOS);

  @preResolve
  @singleton
  Future<Dio> get provideDio async {
    final dio = Dio(
      BaseOptions(
        baseUrl: Platform.isAndroid ? GlobalConstants.pockerBaseUrlAndroid : GlobalConstants.pockerBaseUrlIOS,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: {'Content-Type': 'application/json'},
      ),
    );

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        enabled: kDebugMode,
        filter: (options, args) {
          // // don't print requests with uris containing '/users'
          // if (options.path.contains(APIUrls.usersUrl)) {
          //   return false;
          // }
          // don't print responses with unit8 list data
          return !args.isResponse || !args.hasUint8ListData;
        },
      ),
    );

    dio.interceptors.add(RefreshTokenInterceptor(dio, const FlutterSecureStorage()));

    return dio;
  }
}

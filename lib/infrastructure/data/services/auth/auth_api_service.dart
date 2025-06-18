import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../presentation/core/constants/api_urls.dart';
import '../../../dtos/auth/auth_dto.dart';

part 'auth_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class AuthApiService {
  @factoryMethod
  factory AuthApiService(Dio dio) = _AuthApiService;

  static const String usersUrl = APIUrls.usersUrl;

  @POST("$usersUrl/auth-with-password")
  Future<HttpResponse> signInWithEmail({@Body() required Map<String, dynamic> body});

  @POST("$usersUrl/records")
  Future<HttpResponse> signUpWithEmail({@Body() required Map<String, dynamic> body});

  @POST("$usersUrl/request-verification")
  Future<HttpResponse> requestVerificationEmail({@Body() required Map<String, dynamic> body});

  @POST("$usersUrl/request-password-reset")
  Future<HttpResponse> requestPasswordReset({@Body() required Map<String, dynamic> body});

  @POST("$usersUrl/auth/refresh-token")
  Future<AuthDTO> refreshToken({@Body() required Map<String, dynamic> body});
}

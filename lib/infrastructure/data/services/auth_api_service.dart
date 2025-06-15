// import 'package:dio/dio.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:retrofit/retrofit.dart';

// part 'auth_api_service.g.dart';

// @RestApi()
// @injectable
// @JsonSerializable(explicitToJson: true)
// abstract class AuthApiService {
//   factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

//   @POST("/auth/sign-in")
//   Future<void> signInWithEmail(@Body() Map<String, dynamic> body);

//   @POST("/auth/sign-up")
//   Future<void> signUpWithEmail(@Body() Map<String, dynamic> body);

//   @POST("/auth/request-verification-email")
//   Future<void> requestVerificationEmail(@Body() Map<String, dynamic> body);

//   @POST("/auth/request-password-reset")
//   Future<void> requestPasswordReset(@Body() Map<String, dynamic> body);

//   @POST("/auth/sign-out")
//   Future<void> signOut();
// }

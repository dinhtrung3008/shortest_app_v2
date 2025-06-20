import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../presentation/core/constants/api_urls.dart';

part 'current_user_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class CurrentUserApiService {
  @factoryMethod
  factory CurrentUserApiService(Dio dio) = _CurrentUserApiService;

  static const String usersUrl = APIUrls.usersUrl;

  @GET("$usersUrl/records/{userId}")
  Future<HttpResponse> getCurrentUserById({@Path("userId") required String userId});

  @PATCH("$usersUrl/records/{userId}")
  @MultiPart()
  Future<HttpResponse> updateUser({
    @Path("userId") required String userId,
    @Body() required Map<String, dynamic> body,
    @Part(name: "avatar") MultipartFile? profileImage,
    @Part(name: "banner") MultipartFile? coverImage,
  });

  @GET("$usersUrl/records")
  Future<HttpResponse> getUsersSearchByUsername({@Query("filter") String? filter});

  @PATCH("$usersUrl/records/{userId}")
  Future<HttpResponse> updateFollowings({
    @Path("userId") required String userId,
    @Body() required Map<String, dynamic> body,
  });

  @PATCH("$usersUrl/records/{userId}")
  Future<HttpResponse> updateInterests({
    @Path("userId") required String userId,
    @Body() required Map<String, dynamic> body,
  });
}

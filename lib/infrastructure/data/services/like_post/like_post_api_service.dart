import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../presentation/core/constants/api_urls.dart';

part 'like_post_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class LikePostApiService {
  @factoryMethod
  factory LikePostApiService(Dio dio) = _LikePostApiService;

  static const String likesPostUrl = APIUrls.likesPostUrl;

  @POST("$likesPostUrl/records")
  Future<HttpResponse> likePost({@Body() required Map<String, dynamic> body, @Query("expand") String? expand});

  @DELETE("$likesPostUrl/records/{likePostId}")
  Future<HttpResponse> unlikePost({@Path("likePostId") required String likePostId});

  @GET("$likesPostUrl/records")
  Future<HttpResponse> getLikesByPostId({
    @Query("page") int? page,
    @Query("perPage") int? perPage,
    @Query("filter") String? filter,
    @Query("expand") String? expand,
  });
}

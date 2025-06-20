import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../presentation/core/constants/api_urls.dart';

part 'like_comment_post_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class LikeCommentPostApiService {
  @factoryMethod
  factory LikeCommentPostApiService(Dio dio) = _LikeCommentPostApiService;

  static const String likesCommentsUrl = APIUrls.likesCommentsUrl;

  @POST("$likesCommentsUrl/records")
  Future<HttpResponse> likeComment({@Body() required Map<String, dynamic> body});

  @DELETE("$likesCommentsUrl/records/{likeCommentId}")
  Future<HttpResponse> unlikeComment({@Path("likeCommentId") required String likeCommentId});

  @GET("$likesCommentsUrl/records")
  Future<HttpResponse> getLikeCommentsByPostId({
    @Query("page") int? page,
    @Query("perPage") int? perPage,
    @Query("filter") String? filter,
  });

  @DELETE("$likesCommentsUrl/records/{likeCommentId}")
  Future<HttpResponse> deleteLikeComment({@Path("likeCommentId") required String likeCommentId});
}

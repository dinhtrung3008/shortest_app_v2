import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../presentation/core/constants/api_urls.dart';

part 'comment_post_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class CommentPostApiService {
  @factoryMethod
  factory CommentPostApiService(Dio dio) = _CommentPostApiService;

  static const String commentsPostUrl = APIUrls.commentsPostUrl;

  @POST("$commentsPostUrl/records")
  @MultiPart()
  Future<HttpResponse> addComment({
    @Part(name: "content") required String content,
    @Part(name: "owner") required String owner,
    @Part(name: "postOwner") required String postOwner,
    @Part(name: "mediaUrls") List<MultipartFile>? mediaFiles,
    @Query("expand") String? expand,
  });

  @PATCH("$commentsPostUrl/records/{commentId}")
  @MultiPart()
  Future<HttpResponse> updateComment({
    @Path("commentId") required String commentId,
    @Part(name: "content") required String content,
    @Part(name: "updated") String? updated,
    @Part(name: "mediaUrls") List<MultipartFile>? mediaFiles,
    @Query("expand") String? expand,
  });

  @GET("$commentsPostUrl/records")
  Future<HttpResponse> getCommentsByPostId({
    @Query("page") int? page,
    @Query("perPage") int? perPage,
    @Query("sort") String? sort,
    @Query("filter") String? filter,
    @Query("expand") String? expand,
  });

  @DELETE("$commentsPostUrl/records/{commentId}")
  Future<HttpResponse> deleteComment({@Path("commentId") required String commentId});
}

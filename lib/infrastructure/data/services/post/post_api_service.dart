import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../presentation/core/constants/api_urls.dart';

part 'post_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class PostApiService {
  @factoryMethod
  factory PostApiService(Dio dio) = _PostApiService;

  static const String postsUrl = APIUrls.postsUrl;

  @POST("$postsUrl/records")
  @MultiPart()
  Future<HttpResponse> createPost({
    @Part(name: "content") String? content,
    @Part(name: "visibility") String? visibility,
    @Part(name: "updated") String? updated,
    @Part(name: "mediaUrls") List<MultipartFile>? multipartFiles,
    @Query("expand") String? expand,
  });

  @PATCH("$postsUrl/records/{postId}")
  @MultiPart()
  Future<HttpResponse> updatePost({
    @Path("postId") required String postId,
    @Part(name: "content") String? content,
    @Part(name: "visibility") String? visibility,
    @Part(name: "updated") String? updated,
    @Part(name: "mediaUrls") List<MultipartFile>? multipartFiles,
    @Query("expand") String? expand,
  });

  @GET("$postsUrl/records")
  Future<HttpResponse> getPosts({
    @Query("page") int? page,
    @Query("perPage") int? perPage,
    @Query("sort") String? sort,
    @Query("filter") String? filter,
    @Query("expand") String? expand,
  });

  @GET("$postsUrl/records/{postId}")
  Future<HttpResponse> getPostById({@Path("postId") required String postId, @Query("expand") String? expand});

  @DELETE("$postsUrl/records/{postId}")
  Future<HttpResponse> deletePost({@Path("postId") required String postId});

  @PATCH("$postsUrl/records/{postId}")
  Future<HttpResponse> updatePostEngagement({
    @Path("postId") required String postId,
    @Body() required Map<String, dynamic> body,
    @Query("expand") String? expand,
  });
}

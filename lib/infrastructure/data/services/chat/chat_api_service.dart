import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../presentation/core/constants/api_urls.dart';
part 'chat_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class ChatApiService {
  @factoryMethod
  factory ChatApiService(Dio dio) = _ChatApiService;

  static const String chatUrl = APIUrls.chatUrl;

  @GET("$chatUrl/records")
  Future<HttpResponse> getChatRooms({
    @Query("page") int? page,
    @Query("perPage") int? perPage,
    @Query("filter") String? filter,
    @Query("expand") String? expand,
  });

  @POST("$chatUrl/records")
  Future<HttpResponse> createChatRoom({@Body() required Map<String, dynamic> body, @Query("expand") String? expand});

  @GET("$chatUrl/records/{chatId}")
  Future<HttpResponse> getChatRoomById({@Path("chatId") required String chatId, @Query("expand") String? expand});

  @DELETE("$chatUrl/records/{chatId}")
  Future<HttpResponse> deleteChatRoom({@Path("chatId") required String chatId});

  @PATCH("$chatUrl/records/{chatId}")
  Future<HttpResponse> updateChatData({
    @Path("chatId") required String chatId,
    @Body() required Map<String, dynamic> body,
    @Query("expand") String? expand,
  });
}

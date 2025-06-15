import 'package:injectable/injectable.dart';

import '../../../../presentation/core/constants/api_urls.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/post_shortest/post_shortest_dto.dart';
import '../../client/dio_client.dart';

abstract class ISearchTrendRemoteService {
  Future<ListPostShortestResponseDTO> getSearchTrend({
    int page = 1,
    int perPage = 10,
    int minLikesCount = 10,
    int minViewsCount = 50,
  });
}

@LazySingleton(as: ISearchTrendRemoteService)
class SearchTrendRemoteServiceImpl with ExecuteRemoteServiceImpl implements ISearchTrendRemoteService {
  final IDioClient _iDioClient;

  SearchTrendRemoteServiceImpl(this._iDioClient);

  @override
  Future<ListPostShortestResponseDTO> getSearchTrend({
    int page = 1,
    int perPage = 10,
    int minLikesCount = 1,
    int minViewsCount = 10,
  }) async {
    final filter =
        "(likesCount>=$minLikesCount || viewsCount>=$minViewsCount) && visibility!='private' && mediaUrls!='[]'";
    final queryParams = {
      "page": page,
      "perPage": perPage,
      "filter": filter,
      "expand": "owner",
      "sort": "-likesCount,-viewsCount",
    };

    return handleResponse<ListPostShortestResponseDTO>(
      _iDioClient.getRequest("/${APIUrls.postsUrl}/records", queryParams: queryParams),
      onSuccess: (response) {
        return ListPostShortestResponseDTO.fromJson(response.data);
      },
    );
  }
}

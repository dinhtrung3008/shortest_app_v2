import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/failures/base_failure.dart';
import '../../../../domain/entities/post_shortest/post_shortest.dart';
import '../../../../domain/repositories/post/i_post_repository.dart';
import '../../core/mixins/connectivity.dart';
import '../../core/mixins/execute_repository_service.impl.dart';
import '../../data/remote/post/post_remote_service.dart';
import '../../dtos/post_shortest/post_shortest_dto.dart';

@LazySingleton(as: ICreatePost)
class CreatePostImpl with ExecuteRepositoryImpl, ConnectionChecker implements ICreatePost {
  final IPostRemoteService _iPostRemoteService;

  CreatePostImpl(this._iPostRemoteService);

  @override
  Future<Either<BaseFailure, PostShortest>> call({
    required String content,
    required String owner,
    required String visibility,
    required String type,
    List<XFile>? mediaFiles,
  }) async {
    final hasInternet = await internetChecker();
    if (!hasInternet) {
      return left(const BaseFailure.offline());
    }

    return executeRepositoryService<PostShortest>(
      action: () async {
        final postDTO = PostShortestDTO(content: content, owner: owner, visibility: visibility, type: type);
        final response = await _iPostRemoteService.createPost(postDTO: postDTO, mediaFiles: mediaFiles);
        return right(response.toDomain());
      },
    );
  }
}

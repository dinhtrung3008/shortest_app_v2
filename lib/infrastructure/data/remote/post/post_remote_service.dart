import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../../presentation/core/enums/post_interaction_type_enum.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/post_shortest/post_shortest_dto.dart';
import '../../../dtos/user_shortest/user_shortest_dto.dart';
import '../../services/post/post_api_service.dart';

abstract class IPostRemoteService {
  Future<PostShortestDTO> createPost({required PostShortestDTO postDTO, List<XFile>? mediaFiles});

  Future<PostShortestDTO> updatePost({
    required String postId,
    String? content,
    String? visibility,
    List<XFile>? mediaFiles,
  });

  Future<ListPostShortestResponseDTO> getPosts({int page = 1, int perPage = 10, String filter = "="});

  Future<PostShortestDTO> getPostById({required String postId});
  Future<Unit> deletePost({required String postId});

  Future<PostShortestDTO> increaseLikes({required String postId});
  Future<PostShortestDTO> decreaseLikes({required String postId});
  Future<PostShortestDTO> increaseComments({required String postId});
  Future<PostShortestDTO> decreaseComments({required String postId});
  Future<PostShortestDTO> increaseShares({required String postId});
  Future<PostShortestDTO> decreaseShares({required String postId});
  Future<PostShortestDTO> increaseViewsCount({required String postId});
}

@LazySingleton(as: IPostRemoteService)
class PostRemoteServiceImpl with ExecuteRemoteServiceImpl implements IPostRemoteService {
  final PostApiService _postApiService;
  final FlutterSecureStorage _secureStorage;

  PostRemoteServiceImpl(this._postApiService, this._secureStorage);

  Future<List<MultipartFile>> _convertXFilesToMultipart(List<XFile> files) {
    if (files.isEmpty) return Future.value([]);
    return Future.wait(files.map((file) => MultipartFile.fromFile(file.path, filename: file.name)));
  }

  Future<String> _buildFilter(String filter) async {
    final cachedUserJson = await _secureStorage.read(key: UserConstants.cachedUserKey);
    if (cachedUserJson == null) {
      throw CacheException(message: "User data not found in cache.");
    }

    final UserShortestDTO cachedUser = UserShortestDTO.fromJson(jsonDecode(cachedUserJson));
    final List<String> followings = List<String>.from(cachedUser.followings ?? []);

    final String currentUserFilter = "owner='${cachedUser.id}'";

    if (filter.isNotEmpty) return filter;

    if (followings.isNotEmpty) {
      final followingsFilter = followings.map((id) => "owner='$id' && visibility='public'").join(" || ");
      return "($currentUserFilter || $followingsFilter)";
    }

    return currentUserFilter;
  }

  @override
  Future<PostShortestDTO> createPost({required PostShortestDTO postDTO, List<XFile>? mediaFiles}) async {
    List<MultipartFile> multipartFiles = await _convertXFilesToMultipart(mediaFiles ?? []);

    return await executeApiService<PostShortestDTO>(
      _postApiService.createPost(multipartFiles: multipartFiles, expand: "owner"),
      onSuccess: (response) => PostShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<PostShortestDTO> updatePost({
    required String postId,
    String? content,
    String? visibility,
    List<XFile>? mediaFiles,
  }) async {
    List<MultipartFile> multipartFiles = await _convertXFilesToMultipart(mediaFiles ?? []);

    return await executeApiService<PostShortestDTO>(
      _postApiService.updatePostById(
        postId: postId,
        content: content,
        visibility: visibility,
        updated: DateTime.now().toIso8601String(),
        multipartFiles: multipartFiles,
        expand: "owner",
      ),
      onSuccess: (response) => PostShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<ListPostShortestResponseDTO> getPosts({int page = 1, int perPage = 10, String filter = ""}) async {
    final finalFilter = await _buildFilter(filter);

    return await executeApiService<ListPostShortestResponseDTO>(
      _postApiService.getPosts(page: page, perPage: perPage, sort: "-created", filter: finalFilter, expand: "owner"),
      onSuccess: (response) => ListPostShortestResponseDTO.fromJson(response.data),
    );
  }

  @override
  Future<PostShortestDTO> getPostById({required String postId}) async {
    return await executeApiService<PostShortestDTO>(
      _postApiService.getPostById(postId: postId, expand: "owner"),
      onSuccess: (response) => PostShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> deletePost({required String postId}) async {
    return await executeApiService<Unit>(_postApiService.deletePostById(postId: postId), onSuccess: (_) => unit);
  }

  @override
  Future<PostShortestDTO> increaseLikes({required String postId}) =>
      _updatePostInteraction(postId: postId, type: PostInteractionType.likes, isIncrease: true);

  @override
  Future<PostShortestDTO> decreaseLikes({required String postId}) =>
      _updatePostInteraction(postId: postId, type: PostInteractionType.likes, isIncrease: false);

  @override
  Future<PostShortestDTO> increaseComments({required String postId}) =>
      _updatePostInteraction(postId: postId, type: PostInteractionType.comments, isIncrease: true);

  @override
  Future<PostShortestDTO> decreaseComments({required String postId}) =>
      _updatePostInteraction(postId: postId, type: PostInteractionType.comments, isIncrease: false);

  @override
  Future<PostShortestDTO> increaseShares({required String postId}) =>
      _updatePostInteraction(postId: postId, type: PostInteractionType.shares, isIncrease: true);

  @override
  Future<PostShortestDTO> decreaseShares({required String postId}) =>
      _updatePostInteraction(postId: postId, type: PostInteractionType.shares, isIncrease: false);

  @override
  Future<PostShortestDTO> increaseViewsCount({required String postId}) =>
      _updatePostInteraction(postId: postId, type: PostInteractionType.views, isIncrease: true);

  //[MORE] <----- Implement _updatePostInteraction ----->
  Future<PostShortestDTO> _updatePostInteraction({
    required String postId,
    required PostInteractionType type,
    required bool isIncrease,
  }) async {
    final currentUserId = await _getCurrentUserId();
    final post = await getPostById(postId: postId);

    Map<String, dynamic> body;

    switch (type) {
      case PostInteractionType.likes:
        body = _buildLikesUpdateBody(post, currentUserId, isIncrease);
        break;
      case PostInteractionType.comments:
        body = _buildCommentsUpdateBody(post, currentUserId, isIncrease);
        break;
      case PostInteractionType.shares:
        body = _buildSharesUpdateBody(post, currentUserId, isIncrease);
        break;
      case PostInteractionType.views:
        body = _buildViewsUpdateBody(post, isIncrease);
        break;
    }

    return await executeApiService<PostShortestDTO>(
      _postApiService.updatePostData(postId: postId, body: body, expand: "owner"),
      onSuccess: (response) => PostShortestDTO.fromJson(response.data),
    );
  }

  Map<String, dynamic> _buildLikesUpdateBody(PostShortestDTO post, String userId, bool isIncrease) {
    final updatedLikes = List<String>.from(post.likes ?? []);

    if (isIncrease && !updatedLikes.contains(userId)) {
      updatedLikes.add(userId);
    } else if (!isIncrease && updatedLikes.contains(userId)) {
      updatedLikes.remove(userId);
    }

    final newCount = isIncrease ? (post.likesCount ?? 0) + 1 : (post.likesCount ?? 0) - 1;
    return PostShortestDTO(likesCount: newCount, likes: updatedLikes).toJson();
  }

  Map<String, dynamic> _buildCommentsUpdateBody(PostShortestDTO post, String userId, bool isIncrease) {
    final updatedComments = List<String>.from(post.comments ?? []);

    if (isIncrease && !updatedComments.contains(userId)) {
      updatedComments.add(userId);
    } else if (!isIncrease && updatedComments.contains(userId)) {
      updatedComments.remove(userId);
    }

    final newCount = isIncrease ? (post.commentsCount ?? 0) + 1 : (post.commentsCount ?? 0) - 1;
    return PostShortestDTO(commentsCount: newCount, comments: updatedComments).toJson();
  }

  Map<String, dynamic> _buildSharesUpdateBody(PostShortestDTO post, String userId, bool isIncrease) {
    final updatedShares = List<String>.from(post.shares ?? []);

    if (isIncrease && !updatedShares.contains(userId)) {
      updatedShares.add(userId);
    } else if (!isIncrease && updatedShares.contains(userId)) {
      updatedShares.remove(userId);
    }

    final newCount = isIncrease ? (post.sharesCount ?? 0) + 1 : (post.sharesCount ?? 0) - 1;
    return PostShortestDTO(sharesCount: newCount, shares: updatedShares).toJson();
  }

  Map<String, dynamic> _buildViewsUpdateBody(PostShortestDTO post, bool isIncrease) {
    final newCount = isIncrease ? (post.viewsCount ?? 0) + 1 : (post.viewsCount ?? 0) - 1;
    return PostShortestDTO(viewsCount: newCount).toJson();
  }

  Future<String> _getCurrentUserId() async {
    final cachedUserId = await _secureStorage.read(key: UserConstants.idField);
    if (cachedUserId == null) {
      throw CacheException(message: "User data not found in cache.");
    }
    return cachedUserId;
  }
}

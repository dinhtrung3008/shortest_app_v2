import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../../../domain/core/exceptions/exceptions.dart';
import '../../../../../presentation/core/constants/user_constants.dart';
import '../../../../presentation/core/constants/api_urls.dart';
import '../../../core/mixins/execute_service_remote_impl.dart';
import '../../../dtos/post_shortest/post_shortest_dto.dart';
import '../../../dtos/user_shortest/user_shortest_dto.dart';
import '../../client/dio_client.dart';

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
  Future<int> getPostsCount();

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
  final IDioClient _iDioClient;
  final FlutterSecureStorage _secureStorage;

  PostRemoteServiceImpl(this._iDioClient, this._secureStorage);

  Future<FormData> _createFormData({required Map<String, dynamic> body, List<XFile>? mediaFiles}) async {
    final media =
        mediaFiles != null && mediaFiles.isNotEmpty
            ? await Future.wait(mediaFiles.map((file) => MultipartFile.fromFile(file.path, filename: file.name)))
            : null;

    return FormData.fromMap({...body, if (media != null) "mediaUrls": media});
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
    final formData = await _createFormData(body: postDTO.toJson(), mediaFiles: mediaFiles);

    return await handleResponse<PostShortestDTO>(
      _iDioClient.postRequest("/${APIUrls.postsUrl}/records", formData: formData, queryParams: {"expand": "owner"}),
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
    final formData = await _createFormData(
      body: PostShortestDTO(content: content, visibility: visibility, updated: DateTime.now()).toJson(),
      mediaFiles: mediaFiles,
    );

    return await handleResponse<PostShortestDTO>(
      _iDioClient.patchRequest(
        "/${APIUrls.postsUrl}/records/$postId",
        formData: formData,
        queryParams: {"expand": "owner"},
      ),
      onSuccess: (response) => PostShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<ListPostShortestResponseDTO> getPosts({int page = 1, int perPage = 10, String filter = ""}) async {
    final finalFilter = await _buildFilter(filter);

    return await handleResponse<ListPostShortestResponseDTO>(
      _iDioClient.getRequest(
        "/${APIUrls.postsUrl}/records",
        queryParams: {"page": page, "perPage": perPage, "sort": "-created", "filter": finalFilter, "expand": "owner"},
      ),
      onSuccess: (response) => ListPostShortestResponseDTO.fromJson(response.data),
    );
  }

  @override
  Future<PostShortestDTO> getPostById({required String postId}) async {
    return await handleResponse<PostShortestDTO>(
      _iDioClient.getRequest("/${APIUrls.postsUrl}/records/$postId", queryParams: {"expand": "owner"}),
      onSuccess: (response) => PostShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<Unit> deletePost({required String postId}) async {
    return await handleResponse<Unit>(
      _iDioClient.deleteRequest("/${APIUrls.postsUrl}/records/$postId"),
      onSuccess: (_) => unit,
    );
  }

  @override
  Future<int> getPostsCount() async {
    return await handleResponse<int>(
      _iDioClient.deleteRequest("/${APIUrls.postsUrl}/records"),
      onSuccess: (response) => response.data['totalItems'] ?? 0,
    );
  }

  @override
  Future<PostShortestDTO> increaseLikes({required String postId}) async {
    final currentUserId = await _getCurrentUserId();

    final post = await getPostById(postId: postId);

    final updatedLikes = List<String>.from(post.likes ?? []);
    if (!updatedLikes.contains(currentUserId)) {
      updatedLikes.add(currentUserId);
    }

    final body = PostShortestDTO(likesCount: (post.likesCount ?? 0) + 1, likes: updatedLikes).toJson();

    return await handleResponse<PostShortestDTO>(
      _iDioClient.patchRequest(
        "/${APIUrls.postsUrl}/records/$postId",
        bodyParams: body,
        queryParams: {"expand": "owner"},
      ),
      onSuccess: (response) => PostShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<PostShortestDTO> decreaseLikes({required String postId}) async {
    final currentUserId = await _getCurrentUserId();

    final post = await getPostById(postId: postId);

    final updatedLikes = List<String>.from(post.likes ?? []);
    if (updatedLikes.contains(currentUserId)) {
      updatedLikes.remove(currentUserId);
    }

    final body = PostShortestDTO(likesCount: (post.likesCount ?? 0) - 1, likes: updatedLikes).toJson();

    return await handleResponse<PostShortestDTO>(
      _iDioClient.patchRequest(
        "/${APIUrls.postsUrl}/records/$postId",
        bodyParams: body,
        queryParams: {"expand": "owner"},
      ),
      onSuccess: (response) => PostShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<PostShortestDTO> increaseComments({required String postId}) async {
    final currentUserId = await _getCurrentUserId();

    final post = await getPostById(postId: postId);

    final updatedComments = List<String>.from(post.comments ?? []);
    if (!updatedComments.contains(currentUserId)) {
      updatedComments.add(currentUserId);
    }

    final body = PostShortestDTO(commentsCount: (post.commentsCount ?? 0) + 1, comments: updatedComments).toJson();

    return await handleResponse<PostShortestDTO>(
      _iDioClient.patchRequest(
        "/${APIUrls.postsUrl}/records/$postId",
        bodyParams: body,
        queryParams: {"expand": "owner"},
      ),
      onSuccess: (response) => PostShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<PostShortestDTO> decreaseComments({required String postId}) async {
    final currentUserId = await _getCurrentUserId();

    final post = await getPostById(postId: postId);

    final updatedComments = List<String>.from(post.comments ?? []);
    if (updatedComments.contains(currentUserId)) {
      updatedComments.remove(currentUserId);
    }

    final body = PostShortestDTO(commentsCount: (post.commentsCount ?? 0) - 1, comments: updatedComments).toJson();

    return await handleResponse<PostShortestDTO>(
      _iDioClient.patchRequest(
        "/${APIUrls.postsUrl}/records/$postId",
        bodyParams: body,
        queryParams: {"expand": "owner"},
      ),
      onSuccess: (response) => PostShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<PostShortestDTO> increaseShares({required String postId}) async {
    final currentUserId = await _getCurrentUserId();

    final post = await getPostById(postId: postId);

    final updatedShares = List<String>.from(post.shares ?? []);
    if (!updatedShares.contains(currentUserId)) {
      updatedShares.add(currentUserId);
    }

    final body = PostShortestDTO(sharesCount: (post.sharesCount ?? 0) + 1, shares: updatedShares).toJson();

    return await handleResponse<PostShortestDTO>(
      _iDioClient.patchRequest(
        "/${APIUrls.postsUrl}/records/$postId",
        bodyParams: body,
        queryParams: {"expand": "owner"},
      ),
      onSuccess: (response) => PostShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<PostShortestDTO> decreaseShares({required String postId}) async {
    final currentUserId = await _getCurrentUserId();

    final post = await getPostById(postId: postId);

    final updatedShares = List<String>.from(post.shares ?? []);
    if (updatedShares.contains(currentUserId)) {
      updatedShares.remove(currentUserId);
    }

    final body = PostShortestDTO(sharesCount: (post.sharesCount ?? 0) - 1, shares: updatedShares).toJson();

    return await handleResponse<PostShortestDTO>(
      _iDioClient.patchRequest(
        "/${APIUrls.postsUrl}/records/$postId",
        bodyParams: body,
        queryParams: {"expand": "owner"},
      ),
      onSuccess: (response) => PostShortestDTO.fromJson(response.data),
    );
  }

  @override
  Future<PostShortestDTO> increaseViewsCount({required String postId}) async {
    final post = await getPostById(postId: postId);

    final body = PostShortestDTO(viewsCount: (post.viewsCount ?? 0) + 1).toJson();

    return await handleResponse<PostShortestDTO>(
      _iDioClient.patchRequest(
        "/${APIUrls.postsUrl}/records/$postId",
        bodyParams: body,
        queryParams: {"expand": "owner"},
      ),
      onSuccess: (response) => PostShortestDTO.fromJson(response.data),
    );
  }

  Future<String> _getCurrentUserId() async {
    final cachedUserId = await _secureStorage.read(key: UserConstants.idField);
    if (cachedUserId == null) {
      throw CacheException(message: "User data not found in cache.");
    }
    return cachedUserId;
  }
}

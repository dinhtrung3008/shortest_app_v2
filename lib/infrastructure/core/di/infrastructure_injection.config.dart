// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pocketbase/pocketbase.dart' as _i169;

import '../../../application/blocs/auth/auth_bloc.dart' as _i999;
import '../../../domain/repositories/auth/i_auth_repository.dart' as _i1064;
import '../../../domain/repositories/chat/i_chat_repository.dart' as _i865;
import '../../../domain/repositories/comment_post/i_comment_post_repository.dart'
    as _i244;
import '../../../domain/repositories/current_user/i_current_user_repository.dart'
    as _i917;
import '../../../domain/repositories/like_post/i_like_post_repository.dart'
    as _i436;
import '../../../domain/repositories/message/i_message_repository.dart'
    as _i999;
import '../../../domain/repositories/post/i_post_repository.dart' as _i92;
import '../../../domain/repositories/search/i_search_repository.dart' as _i522;
import '../../../domain/repositories/share_post/i_share_post_repository.dart'
    as _i865;
import '../../../domain/repositories/viewer_user/i_viewer_user_repository.dart'
    as _i699;
import '../../../presentation/core/theme/app_sizes.dart' as _i314;
import '../../../presentation/core/theme/app_themes.dart' as _i518;
import '../../data/client/dio_client.dart' as _i462;
import '../../data/local/search/search_local_service.dart' as _i771;
import '../../data/local/user/user_local_service.dart' as _i530;
import '../../data/remote/auth/auth_remote_service.dart' as _i750;
import '../../data/remote/chat/chat_remote_service.dart' as _i495;
import '../../data/remote/chat/chat_subcribe_service.dart' as _i6;
import '../../data/remote/comment_post/comment_post_remote_service.dart'
    as _i825;
import '../../data/remote/current_user/current_user_remote_service.dart'
    as _i157;
import '../../data/remote/like_comment/like_comment_remote_service.dart'
    as _i210;
import '../../data/remote/like_post/like_post_remote_service.dart' as _i512;
import '../../data/remote/message/message_remote_service.dart' as _i897;
import '../../data/remote/message/message_subcribe_service.dart' as _i816;
import '../../data/remote/post/post_remote_service.dart' as _i317;
import '../../data/remote/search_trend/search_trend_remote_service.dart'
    as _i693;
import '../../data/remote/share_post/share_post_remote_service.dart' as _i465;
import '../../data/remote/viewer_user/viewer_user_remote_service.dart' as _i418;
import '../../data/services/auth/auth_api_service.dart' as _i329;
import '../../data/services/chat/chat_api_service.dart' as _i604;
import '../../data/services/post/post_api_service.dart' as _i1028;
import '../../repositories/auth/password_reset_impl.dart' as _i923;
import '../../repositories/auth/sign_in_with_email_impl.dart' as _i404;
import '../../repositories/auth/sign_out_impl.dart' as _i872;
import '../../repositories/auth/sign_up_with_email_impl.dart' as _i315;
import '../../repositories/auth/verification_email_impl.dart' as _i304;
import '../../repositories/chat/create_chat_impl.dart' as _i102;
import '../../repositories/chat/delete_chat_impl.dart' as _i570;
import '../../repositories/chat/mark_as_read_impl.dart' as _i791;
import '../../repositories/chat/mark_as_un_read_impl.dart' as _i431;
import '../../repositories/chat/update_chat_impl.dart' as _i839;
import '../../repositories/comment_post/add_comment_post_impl.dart' as _i511;
import '../../repositories/comment_post/delete_comment_post_impl.dart' as _i523;
import '../../repositories/comment_post/get_comments_by_post_id_impl.dart'
    as _i177;
import '../../repositories/comment_post/update_comment_post_impl.dart'
    as _i1041;
import '../../repositories/current_user/decrease_followings_impl.dart' as _i809;
import '../../repositories/current_user/get_current_user_by_id_impl.dart'
    as _i275;
import '../../repositories/current_user/increase_followings_impl.dart' as _i216;
import '../../repositories/current_user/update_current_user_impl.dart'
    as _i1020;
import '../../repositories/like_post/get_likes_by_post_id_impl.dart' as _i762;
import '../../repositories/like_post/like_post_impl.dart' as _i1054;
import '../../repositories/like_post/unlike_post_impl.dart' as _i734;
import '../../repositories/message/create_message_impl.dart' as _i640;
import '../../repositories/message/delete_message_impl.dart' as _i999;
import '../../repositories/message/like_message_impl.dart' as _i293;
import '../../repositories/message/update_content_message_impl.dart' as _i796;
import '../../repositories/post/create_post_impl.dart' as _i704;
import '../../repositories/post/decrease_comment_post_impl.dart' as _i443;
import '../../repositories/post/decrease_like_post_impl.dart' as _i812;
import '../../repositories/post/decrease_share_post_impl.dart' as _i588;
import '../../repositories/post/delete_post_impl.dart' as _i823;
import '../../repositories/post/get_post_by_id_impl.dart' as _i761;
import '../../repositories/post/get_posts_impl.dart' as _i27;
import '../../repositories/post/increase_comment_post_impl.dart' as _i286;
import '../../repositories/post/increase_like_post_impl.dart' as _i363;
import '../../repositories/post/increase_share_post_impl.dart' as _i961;
import '../../repositories/post/increase_view_count_impl.dart' as _i26;
import '../../repositories/post/update_post_impl.dart' as _i646;
import '../../repositories/search/cached_list_search_history_impl.dart' as _i71;
import '../../repositories/search/delete_list_search_history_impl.dart'
    as _i541;
import '../../repositories/search/get_list_search_history_impl.dart' as _i12;
import '../../repositories/search/get_search_trend_impl.dart' as _i307;
import '../../repositories/search/request_list_search_impl.dart' as _i29;
import '../../repositories/share_post/add_share_post_impl.dart' as _i765;
import '../../repositories/share_post/delete_share_post_impl.dart' as _i392;
import '../../repositories/share_post/get_shares_post_by_post_id_impl.dart'
    as _i646;
import '../../repositories/share_post/update_share_post_impl.dart' as _i522;
import '../../repositories/viewer_user/decrease_followers_impl.dart' as _i52;
import '../../repositories/viewer_user/get_viewer_user_by_id_impl.dart'
    as _i233;
import '../../repositories/viewer_user/increase_followers_impl.dart' as _i410;
import '../module/injectable_module.dart' as _i89;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectableModule = _$InjectableModule();
    await gh.singletonAsync<_i361.Dio>(
      () => injectableModule.provideDio,
      preResolve: true,
    );
    gh.singleton<_i314.AppSizes>(() => _i314.AppSizes());
    gh.singleton<_i518.AppThemes>(() => _i518.AppThemes());
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => injectableModule.flutterSecureStorage,
    );
    gh.lazySingleton<_i169.PocketBase>(() => injectableModule.pocketbase);
    gh.factory<_i816.MessageSubscriptionService>(
      () => _i816.MessageSubscriptionService(gh<_i169.PocketBase>()),
    );
    gh.factory<_i6.ChatSubscriptionService>(
      () => _i6.ChatSubscriptionService(
        gh<_i169.PocketBase>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i771.ISearchLocalService>(
      () => _i771.SearchLocalServiceImpl(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i522.ICachedListSearchHistory>(
      () => _i71.CachedListSearchHistoryImpl(gh<_i771.ISearchLocalService>()),
    );
    gh.lazySingleton<_i1028.PostApiService>(
      () => _i1028.PostApiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i604.ChatApiService>(
      () => _i604.ChatApiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i329.AuthApiService>(
      () => _i329.AuthApiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i462.IDioClient>(
      () => _i462.DioClientImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i522.IDeleteListSearchHistory>(
      () => _i541.DeleteListSearchHistoryImpl(gh<_i771.ISearchLocalService>()),
    );
    gh.lazySingleton<_i530.IUserLocalService>(
      () => _i530.UserLocalServiceImpl(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i825.ICommentPostRemoteService>(
      () => _i825.CommentPostRemoteServiceImpl(
        gh<_i462.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i210.ILikeCommentPostRemoteService>(
      () => _i210.LikeCommentPostRemoteServiceImpl(gh<_i462.IDioClient>()),
    );
    gh.lazySingleton<_i897.IMessageRemoteService>(
      () => _i897.MessageRemoteServiceImpl(
        gh<_i462.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i465.ISharePostRemoteService>(
      () => _i465.SharePostRemoteServiceImpl(
        gh<_i462.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i693.ISearchTrendRemoteService>(
      () => _i693.SearchTrendRemoteServiceImpl(gh<_i462.IDioClient>()),
    );
    gh.lazySingleton<_i512.ILikePostRemoteService>(
      () => _i512.LikePostRemoteServiceImpl(
        gh<_i462.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i418.IViewerUserRemoteService>(
      () => _i418.ViewerUserRemoteServiceImpl(
        gh<_i462.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i495.IChatRemoteService>(
      () => _i495.ChatRemoveServiceImpl(
        gh<_i604.ChatApiService>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i865.IMarkAsUnRead>(
      () => _i431.MarkAsUnReadImpl(gh<_i495.IChatRemoteService>()),
    );
    gh.lazySingleton<_i865.IDeleteSharePost>(
      () => _i392.DeleteSharePostImpl(gh<_i465.ISharePostRemoteService>()),
    );
    gh.lazySingleton<_i999.IUpdateContentMessage>(
      () => _i796.UpdateContentMessageImpl(gh<_i897.IMessageRemoteService>()),
    );
    gh.lazySingleton<_i699.IGetViewerById>(
      () => _i233.GetViewerByIdImpl(gh<_i418.IViewerUserRemoteService>()),
    );
    gh.lazySingleton<_i865.IGetSharePostsByPostId>(
      () =>
          _i646.GetSharePostsByPostIdImpl(gh<_i465.ISharePostRemoteService>()),
    );
    gh.lazySingleton<_i865.IUpdateSharePost>(
      () => _i522.UpdateSharePostImpl(gh<_i465.ISharePostRemoteService>()),
    );
    gh.lazySingleton<_i865.IDeleteChatRoom>(
      () => _i570.DeleteChatImpl(gh<_i495.IChatRemoteService>()),
    );
    gh.lazySingleton<_i865.IMarkAsRead>(
      () => _i791.MarkAsReadImpl(gh<_i495.IChatRemoteService>()),
    );
    gh.lazySingleton<_i865.ICreateChatRoom>(
      () => _i102.CreateChatImpl(gh<_i495.IChatRemoteService>()),
    );
    gh.lazySingleton<_i699.IDecreaseFollowers>(
      () => _i52.DecreaseFollowersImpl(gh<_i418.IViewerUserRemoteService>()),
    );
    gh.lazySingleton<_i865.IAddSharePost>(
      () => _i765.AddSharePostImpl(gh<_i465.ISharePostRemoteService>()),
    );
    gh.lazySingleton<_i157.ICurrentUserRemoteService>(
      () => _i157.CurrentUserRemoteServiceImpl(
        gh<_i462.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i522.IRequestListSearch>(
      () => _i29.RequestListSearchImpl(gh<_i157.ICurrentUserRemoteService>()),
    );
    gh.lazySingleton<_i522.IGetListSearchHistory>(
      () => _i12.GetListSearchHistoryImpl(gh<_i771.ISearchLocalService>()),
    );
    gh.lazySingleton<_i750.IAuthRemoteService>(
      () => _i750.AuthRemoteServiceImpl(
        gh<_i329.AuthApiService>(),
        gh<_i558.FlutterSecureStorage>(),
        gh<_i169.PocketBase>(),
      ),
    );
    gh.lazySingleton<_i244.IDeleteCommentPost>(
      () => _i523.DeleteCommentPostImpl(gh<_i825.ICommentPostRemoteService>()),
    );
    gh.lazySingleton<_i522.IGetSearchTrend>(
      () => _i307.GetSearchTrendImpl(gh<_i693.ISearchTrendRemoteService>()),
    );
    gh.lazySingleton<_i244.IUpdateCommentPost>(
      () => _i1041.UpdateCommentPostImpl(gh<_i825.ICommentPostRemoteService>()),
    );
    gh.lazySingleton<_i436.IGetLikesByPostId>(
      () => _i762.GetLikesByPostIdImpl(gh<_i512.ILikePostRemoteService>()),
    );
    gh.lazySingleton<_i244.IGetCommentsByPostId>(
      () =>
          _i177.GetCommentsByPostIdImpl(gh<_i825.ICommentPostRemoteService>()),
    );
    gh.lazySingleton<_i436.ILikePost>(
      () => _i1054.LikePostImpl(gh<_i512.ILikePostRemoteService>()),
    );
    gh.lazySingleton<_i317.IPostRemoteService>(
      () => _i317.PostRemoteServiceImpl(
        gh<_i1028.PostApiService>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i92.IUpdatePost>(
      () => _i646.UpdatePostImpl(gh<_i317.IPostRemoteService>()),
    );
    gh.lazySingleton<_i244.IAddCommentPost>(
      () => _i511.AddCommentPostImpl(gh<_i825.ICommentPostRemoteService>()),
    );
    gh.lazySingleton<_i92.IDecreaseSharesPostCount>(
      () => _i588.DecreaseSharesPostCountImpl(gh<_i317.IPostRemoteService>()),
    );
    gh.lazySingleton<_i436.IUnlikePost>(
      () => _i734.UnlikePostImpl(gh<_i512.ILikePostRemoteService>()),
    );
    gh.lazySingleton<_i92.IDeletePost>(
      () => _i823.DeletePostImpl(gh<_i317.IPostRemoteService>()),
    );
    gh.lazySingleton<_i92.IGetPostById>(
      () => _i761.GetPostByIdImpl(gh<_i317.IPostRemoteService>()),
    );
    gh.lazySingleton<_i1064.IPasswordReset>(
      () => _i923.PasswordResetImpl(gh<_i750.IAuthRemoteService>()),
    );
    gh.lazySingleton<_i92.IGetPosts>(
      () => _i27.GetPostsImpl(gh<_i317.IPostRemoteService>()),
    );
    gh.lazySingleton<_i92.IDecreaseLikesPostCount>(
      () => _i812.DecreaseLikesPostCountImpl(gh<_i317.IPostRemoteService>()),
    );
    gh.lazySingleton<_i92.IIncreaseLikesPostCount>(
      () => _i363.IncreaseLikesPostCountImpl(gh<_i317.IPostRemoteService>()),
    );
    gh.lazySingleton<_i917.IDecreaseFollowings>(
      () => _i809.DecrementFollowingsImpl(
        gh<_i157.ICurrentUserRemoteService>(),
        gh<_i530.IUserLocalService>(),
      ),
    );
    gh.lazySingleton<_i999.ILikeMessage>(
      () => _i293.LikeMessageImpl(gh<_i897.IMessageRemoteService>()),
    );
    gh.lazySingleton<_i999.ICreateMessage>(
      () => _i640.CreateMessageImpl(gh<_i897.IMessageRemoteService>()),
    );
    gh.lazySingleton<_i865.IUpdateChatRoom>(
      () => _i839.UpdateChatImpl(gh<_i495.IChatRemoteService>()),
    );
    gh.lazySingleton<_i917.IUpdateCurrentUser>(
      () => _i1020.UpdateCurrentUserImpl(
        gh<_i157.ICurrentUserRemoteService>(),
        gh<_i530.IUserLocalService>(),
      ),
    );
    gh.lazySingleton<_i699.IIncreaseFollowers>(
      () => _i410.IncreaseFollowersImpl(gh<_i418.IViewerUserRemoteService>()),
    );
    gh.lazySingleton<_i999.IDeleteMessage>(
      () => _i999.DeleteMessageImpl(gh<_i897.IMessageRemoteService>()),
    );
    gh.lazySingleton<_i917.IIncreaseFollowings>(
      () => _i216.IncrementFollowingsImpl(
        gh<_i157.ICurrentUserRemoteService>(),
        gh<_i530.IUserLocalService>(),
      ),
    );
    gh.lazySingleton<_i1064.ISignOut>(
      () => _i872.SignOutImpl(
        gh<_i750.IAuthRemoteService>(),
        gh<_i530.IUserLocalService>(),
        gh<_i771.ISearchLocalService>(),
      ),
    );
    gh.lazySingleton<_i1064.IVerificationEmail>(
      () => _i304.VerificationEmailImpl(gh<_i750.IAuthRemoteService>()),
    );
    gh.lazySingleton<_i1064.ISignUpWithEmail>(
      () => _i315.SignUpWithEmailImpl(gh<_i750.IAuthRemoteService>()),
    );
    gh.lazySingleton<_i1064.ISignInWithEmail>(
      () => _i404.SignInWithEmailImpl(gh<_i750.IAuthRemoteService>()),
    );
    gh.lazySingleton<_i917.IGetCurrentUserById>(
      () => _i275.GetCurrentUserByIdImpl(
        gh<_i157.ICurrentUserRemoteService>(),
        gh<_i530.IUserLocalService>(),
      ),
    );
    gh.lazySingleton<_i92.IIncreaseSharesPostCount>(
      () => _i961.IncreaseSharesPostCountImpl(gh<_i317.IPostRemoteService>()),
    );
    gh.lazySingleton<_i92.ICreatePost>(
      () => _i704.CreatePostImpl(gh<_i317.IPostRemoteService>()),
    );
    gh.lazySingleton<_i92.IIncreaseViewsPostCount>(
      () => _i26.IncreaseViewsPostCountImpl(gh<_i317.IPostRemoteService>()),
    );
    gh.lazySingleton<_i92.IIncreaseCommentsPostCount>(
      () => _i286.IncreaseCommentsPostCountImpl(gh<_i317.IPostRemoteService>()),
    );
    gh.lazySingleton<_i92.IDecreaseCommentsPostCount>(
      () => _i443.DecreaseCommentsPostCountImpl(gh<_i317.IPostRemoteService>()),
    );
    gh.factory<_i999.AuthBloc>(
      () => _i999.AuthBloc(
        gh<_i1064.ISignInWithEmail>(),
        gh<_i1064.ISignUpWithEmail>(),
        gh<_i1064.IVerificationEmail>(),
        gh<_i1064.ISignOut>(),
      ),
    );
    return this;
  }
}

class _$InjectableModule extends _i89.InjectableModule {}

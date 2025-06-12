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
import 'package:shortest_app/application/bloc/auth/auth_bloc.dart' as _i1033;
import 'package:shortest_app/domain/repositories/auth/i_auth_repository.dart'
    as _i1061;
import 'package:shortest_app/domain/repositories/chat/i_chat_repository.dart'
    as _i283;
import 'package:shortest_app/domain/repositories/comment_post/i_comment_post_repository.dart'
    as _i417;
import 'package:shortest_app/domain/repositories/current_user/i_current_user_repository.dart'
    as _i197;
import 'package:shortest_app/domain/repositories/like_post/i_like_post_repository.dart'
    as _i109;
import 'package:shortest_app/domain/repositories/message/i_message_repository.dart'
    as _i762;
import 'package:shortest_app/domain/repositories/post/i_post_repository.dart'
    as _i433;
import 'package:shortest_app/domain/repositories/search/i_search_repository.dart'
    as _i64;
import 'package:shortest_app/domain/repositories/share_post/i_share_post_repository.dart'
    as _i850;
import 'package:shortest_app/domain/repositories/viewer_user/i_viewer_user_repository.dart'
    as _i273;
import 'package:shortest_app/infrastructure/core/module/injectable_module.dart'
    as _i147;
import 'package:shortest_app/infrastructure/data/client/dio_client.dart'
    as _i25;
import 'package:shortest_app/infrastructure/data/local/search/search_local_service.dart'
    as _i979;
import 'package:shortest_app/infrastructure/data/local/user/user_local_service.dart'
    as _i878;
import 'package:shortest_app/infrastructure/data/remote/authentication/authentication_remote_service.dart'
    as _i752;
import 'package:shortest_app/infrastructure/data/remote/chat/chat_remote_service.dart'
    as _i46;
import 'package:shortest_app/infrastructure/data/remote/chat/chat_subcribe_service.dart'
    as _i544;
import 'package:shortest_app/infrastructure/data/remote/comment_post/comment_post_remote_service.dart'
    as _i132;
import 'package:shortest_app/infrastructure/data/remote/current_user/current_user_remote_service.dart'
    as _i165;
import 'package:shortest_app/infrastructure/data/remote/like_comment/like_comment_remote_service.dart'
    as _i608;
import 'package:shortest_app/infrastructure/data/remote/like_post/like_post_remote_service.dart'
    as _i404;
import 'package:shortest_app/infrastructure/data/remote/message/message_remote_service.dart'
    as _i273;
import 'package:shortest_app/infrastructure/data/remote/message/message_subcribe_service.dart'
    as _i587;
import 'package:shortest_app/infrastructure/data/remote/post/post_remote_service.dart'
    as _i803;
import 'package:shortest_app/infrastructure/data/remote/search_trend/search_trend_remote_service.dart'
    as _i17;
import 'package:shortest_app/infrastructure/data/remote/share_post/share_post_remote_service.dart'
    as _i943;
import 'package:shortest_app/infrastructure/data/remote/viewer_user/viewer_user_remote_service.dart'
    as _i32;
import 'package:shortest_app/infrastructure/repositories/authentication/password_reset_impl.dart'
    as _i872;
import 'package:shortest_app/infrastructure/repositories/authentication/sign_in_with_email_impl.dart'
    as _i417;
import 'package:shortest_app/infrastructure/repositories/authentication/sign_out_impl.dart'
    as _i267;
import 'package:shortest_app/infrastructure/repositories/authentication/sign_up_with_email_impl.dart'
    as _i118;
import 'package:shortest_app/infrastructure/repositories/authentication/verification_email_impl.dart'
    as _i290;
import 'package:shortest_app/infrastructure/repositories/chat/create_chat_impl.dart'
    as _i1058;
import 'package:shortest_app/infrastructure/repositories/chat/delete_chat_impl.dart'
    as _i765;
import 'package:shortest_app/infrastructure/repositories/chat/mark_as_read_impl.dart'
    as _i375;
import 'package:shortest_app/infrastructure/repositories/chat/mark_as_un_read_impl.dart'
    as _i132;
import 'package:shortest_app/infrastructure/repositories/chat/update_chat_impl.dart'
    as _i166;
import 'package:shortest_app/infrastructure/repositories/comment_post/add_comment_post_impl.dart'
    as _i627;
import 'package:shortest_app/infrastructure/repositories/comment_post/delete_comment_post_impl.dart'
    as _i640;
import 'package:shortest_app/infrastructure/repositories/comment_post/get_comments_by_post_id_impl.dart'
    as _i294;
import 'package:shortest_app/infrastructure/repositories/comment_post/update_comment_post_impl.dart'
    as _i947;
import 'package:shortest_app/infrastructure/repositories/current_user/decrease_followings_impl.dart'
    as _i323;
import 'package:shortest_app/infrastructure/repositories/current_user/get_current_user_by_id_impl.dart'
    as _i540;
import 'package:shortest_app/infrastructure/repositories/current_user/increase_followings_impl.dart'
    as _i520;
import 'package:shortest_app/infrastructure/repositories/current_user/update_current_user_impl.dart'
    as _i748;
import 'package:shortest_app/infrastructure/repositories/like_post/get_likes_by_post_id_impl.dart'
    as _i43;
import 'package:shortest_app/infrastructure/repositories/like_post/like_post_impl.dart'
    as _i686;
import 'package:shortest_app/infrastructure/repositories/like_post/unlike_post_impl.dart'
    as _i4;
import 'package:shortest_app/infrastructure/repositories/message/create_message_impl.dart'
    as _i40;
import 'package:shortest_app/infrastructure/repositories/message/delete_message_impl.dart'
    as _i957;
import 'package:shortest_app/infrastructure/repositories/message/like_message_impl.dart'
    as _i234;
import 'package:shortest_app/infrastructure/repositories/message/update_content_message_impl.dart'
    as _i1028;
import 'package:shortest_app/infrastructure/repositories/post/create_post_impl.dart'
    as _i80;
import 'package:shortest_app/infrastructure/repositories/post/decrease_comment_post_impl.dart'
    as _i149;
import 'package:shortest_app/infrastructure/repositories/post/decrease_like_post_impl.dart'
    as _i954;
import 'package:shortest_app/infrastructure/repositories/post/decrease_share_post_impl.dart'
    as _i428;
import 'package:shortest_app/infrastructure/repositories/post/delete_post_impl.dart'
    as _i727;
import 'package:shortest_app/infrastructure/repositories/post/get_post_by_id_impl.dart'
    as _i510;
import 'package:shortest_app/infrastructure/repositories/post/get_post_counts_impl.dart'
    as _i47;
import 'package:shortest_app/infrastructure/repositories/post/get_posts_impl.dart'
    as _i417;
import 'package:shortest_app/infrastructure/repositories/post/increase_comment_post_impl.dart'
    as _i61;
import 'package:shortest_app/infrastructure/repositories/post/increase_like_post_impl.dart'
    as _i650;
import 'package:shortest_app/infrastructure/repositories/post/increase_share_post_impl.dart'
    as _i600;
import 'package:shortest_app/infrastructure/repositories/post/increase_view_count_impl.dart'
    as _i404;
import 'package:shortest_app/infrastructure/repositories/post/update_post_impl.dart'
    as _i831;
import 'package:shortest_app/infrastructure/repositories/search/cached_list_search_history_impl.dart'
    as _i784;
import 'package:shortest_app/infrastructure/repositories/search/delete_list_search_history_impl.dart'
    as _i289;
import 'package:shortest_app/infrastructure/repositories/search/get_list_search_history_impl.dart'
    as _i497;
import 'package:shortest_app/infrastructure/repositories/search/get_search_trend_impl.dart'
    as _i871;
import 'package:shortest_app/infrastructure/repositories/search/request_list_search_impl.dart'
    as _i193;
import 'package:shortest_app/infrastructure/repositories/share_post/add_share_post_impl.dart'
    as _i859;
import 'package:shortest_app/infrastructure/repositories/share_post/delete_share_post_impl.dart'
    as _i499;
import 'package:shortest_app/infrastructure/repositories/share_post/get_shares_post_by_post_id_impl.dart'
    as _i928;
import 'package:shortest_app/infrastructure/repositories/share_post/update_share_post_impl.dart'
    as _i876;
import 'package:shortest_app/infrastructure/repositories/viewer_user/decrease_followers_impl.dart'
    as _i443;
import 'package:shortest_app/infrastructure/repositories/viewer_user/get_viewer_user_by_id_impl.dart'
    as _i196;
import 'package:shortest_app/infrastructure/repositories/viewer_user/increase_followers_impl.dart'
    as _i389;
import 'package:shortest_app/presentation/core/theme/app_sizes.dart' as _i565;
import 'package:shortest_app/presentation/core/theme/app_themes.dart' as _i290;
import 'package:shortest_app/presentation/core/utils/navigator/navigator_service.dart'
    as _i379;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectableModule = _$InjectableModule();
    gh.singleton<_i379.NavigationService>(() => _i379.NavigationService());
    gh.singleton<_i565.AppSizes>(() => _i565.AppSizes());
    gh.singleton<_i290.AppThemes>(() => _i290.AppThemes());
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => injectableModule.flutterSecureStorage,
    );
    gh.lazySingleton<_i169.PocketBase>(() => injectableModule.pocketbase);
    gh.lazySingleton<_i361.Dio>(() => injectableModule.dio);
    gh.factory<_i587.MessageSubscriptionService>(
      () => _i587.MessageSubscriptionService(gh<_i169.PocketBase>()),
    );
    gh.factory<_i544.ChatSubscriptionService>(
      () => _i544.ChatSubscriptionService(
        gh<_i169.PocketBase>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i979.ISearchLocalService>(
      () => _i979.SearchLocalServiceImpl(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i64.ICachedListSearchHistory>(
      () => _i784.CachedListSearchHistoryImpl(gh<_i979.ISearchLocalService>()),
    );
    gh.lazySingleton<_i25.IDioClient>(
      () => _i25.DioClientImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i64.IDeleteListSearchHistory>(
      () => _i289.DeleteListSearchHistoryImpl(gh<_i979.ISearchLocalService>()),
    );
    gh.lazySingleton<_i878.IUserLocalService>(
      () => _i878.UserLocalServiceImpl(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i752.IAuthenticationRemoteService>(
      () => _i752.AuthenticationRemoteServiceImpl(
        gh<_i25.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
        gh<_i169.PocketBase>(),
      ),
    );
    gh.lazySingleton<_i1061.ISignOut>(
      () => _i267.SignOutImpl(
        gh<_i752.IAuthenticationRemoteService>(),
        gh<_i878.IUserLocalService>(),
        gh<_i979.ISearchLocalService>(),
      ),
    );
    gh.lazySingleton<_i132.ICommentPostRemoteService>(
      () => _i132.CommentPostRemoteServiceImpl(
        gh<_i25.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i608.ILikeCommentPostRemoteService>(
      () => _i608.LikeCommentPostRemoteServiceImpl(gh<_i25.IDioClient>()),
    );
    gh.lazySingleton<_i273.IMessageRemoteService>(
      () => _i273.MessageRemoteServiceImpl(
        gh<_i25.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i46.IChatRemoteService>(
      () => _i46.ChatRemoveServiceImpl(
        gh<_i25.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i943.ISharePostRemoteService>(
      () => _i943.SharePostRemoteServiceImpl(
        gh<_i25.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i1061.ISignInWithEmail>(
      () => _i417.SignInWithEmailImpl(gh<_i752.IAuthenticationRemoteService>()),
    );
    gh.lazySingleton<_i17.ISearchTrendRemoteService>(
      () => _i17.SearchTrendRemoteServiceImpl(gh<_i25.IDioClient>()),
    );
    gh.lazySingleton<_i404.ILikePostRemoteService>(
      () => _i404.LikePostRemoteServiceImpl(
        gh<_i25.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i32.IViewerUserRemoteService>(
      () => _i32.ViewerUserRemoteServiceImpl(
        gh<_i25.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i283.IMarkAsUnRead>(
      () => _i132.MarkAsUnReadImpl(gh<_i46.IChatRemoteService>()),
    );
    gh.lazySingleton<_i850.IDeleteSharePost>(
      () => _i499.DeleteSharePostImpl(gh<_i943.ISharePostRemoteService>()),
    );
    gh.lazySingleton<_i762.IUpdateContentMessage>(
      () => _i1028.UpdateContentMessageImpl(gh<_i273.IMessageRemoteService>()),
    );
    gh.lazySingleton<_i273.IGetViewerById>(
      () => _i196.GetViewerByIdImpl(gh<_i32.IViewerUserRemoteService>()),
    );
    gh.lazySingleton<_i850.IGetSharePostsByPostId>(
      () =>
          _i928.GetSharePostsByPostIdImpl(gh<_i943.ISharePostRemoteService>()),
    );
    gh.lazySingleton<_i850.IUpdateSharePost>(
      () => _i876.UpdateSharePostImpl(gh<_i943.ISharePostRemoteService>()),
    );
    gh.lazySingleton<_i283.IDeleteChatRoom>(
      () => _i765.DeleteChatImpl(gh<_i46.IChatRemoteService>()),
    );
    gh.lazySingleton<_i283.IMarkAsRead>(
      () => _i375.MarkAsReadImpl(gh<_i46.IChatRemoteService>()),
    );
    gh.lazySingleton<_i283.ICreateChatRoom>(
      () => _i1058.CreateChatImpl(gh<_i46.IChatRemoteService>()),
    );
    gh.lazySingleton<_i273.IDecreaseFollowers>(
      () => _i443.DecreaseFollowersImpl(gh<_i32.IViewerUserRemoteService>()),
    );
    gh.lazySingleton<_i850.IAddSharePost>(
      () => _i859.AddSharePostImpl(gh<_i943.ISharePostRemoteService>()),
    );
    gh.lazySingleton<_i803.IPostRemoteService>(
      () => _i803.PostRemoteServiceImpl(
        gh<_i25.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i165.ICurrentUserRemoteService>(
      () => _i165.CurrentUserRemoteServiceImpl(
        gh<_i25.IDioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i64.IRequestListSearch>(
      () => _i193.RequestListSearchImpl(gh<_i165.ICurrentUserRemoteService>()),
    );
    gh.lazySingleton<_i64.IGetListSearchHistory>(
      () => _i497.GetListSearchHistoryImpl(gh<_i979.ISearchLocalService>()),
    );
    gh.lazySingleton<_i433.IIncreaseSharesPostCount>(
      () => _i600.IncreaseSharesPostCountImpl(gh<_i803.IPostRemoteService>()),
    );
    gh.lazySingleton<_i433.ICreatePost>(
      () => _i80.CreatePostImpl(gh<_i803.IPostRemoteService>()),
    );
    gh.lazySingleton<_i1061.ISignUpWithEmail>(
      () => _i118.SignUpWithEmailImpl(gh<_i752.IAuthenticationRemoteService>()),
    );
    gh.lazySingleton<_i417.IDeleteCommentPost>(
      () => _i640.DeleteCommentPostImpl(gh<_i132.ICommentPostRemoteService>()),
    );
    gh.lazySingleton<_i433.IIncreaseViewsPostCount>(
      () => _i404.IncreaseViewsPostCountImpl(gh<_i803.IPostRemoteService>()),
    );
    gh.lazySingleton<_i64.IGetSearchTrend>(
      () => _i871.GetSearchTrendImpl(gh<_i17.ISearchTrendRemoteService>()),
    );
    gh.lazySingleton<_i417.IUpdateCommentPost>(
      () => _i947.UpdateCommentPostImpl(gh<_i132.ICommentPostRemoteService>()),
    );
    gh.lazySingleton<_i1061.IPasswordReset>(
      () => _i872.PasswordResetImpl(gh<_i752.IAuthenticationRemoteService>()),
    );
    gh.lazySingleton<_i109.IGetLikesByPostId>(
      () => _i43.GetLikesByPostIdImpl(gh<_i404.ILikePostRemoteService>()),
    );
    gh.lazySingleton<_i433.IIncreaseCommentsPostCount>(
      () => _i61.IncreaseCommentsPostCountImpl(gh<_i803.IPostRemoteService>()),
    );
    gh.lazySingleton<_i417.IGetCommentsByPostId>(
      () =>
          _i294.GetCommentsByPostIdImpl(gh<_i132.ICommentPostRemoteService>()),
    );
    gh.lazySingleton<_i1061.IVerificationEmail>(
      () =>
          _i290.VerificationEmailImpl(gh<_i752.IAuthenticationRemoteService>()),
    );
    gh.lazySingleton<_i109.ILikePost>(
      () => _i686.LikePostImpl(gh<_i404.ILikePostRemoteService>()),
    );
    gh.lazySingleton<_i433.IDecreaseCommentsPostCount>(
      () => _i149.DecreaseCommentsPostCountImpl(gh<_i803.IPostRemoteService>()),
    );
    gh.lazySingleton<_i433.IUpdatePost>(
      () => _i831.UpdatePostImpl(gh<_i803.IPostRemoteService>()),
    );
    gh.lazySingleton<_i417.IAddCommentPost>(
      () => _i627.AddCommentPostImpl(gh<_i132.ICommentPostRemoteService>()),
    );
    gh.lazySingleton<_i433.IDecreaseSharesPostCount>(
      () => _i428.DecreaseSharesPostCountImpl(gh<_i803.IPostRemoteService>()),
    );
    gh.lazySingleton<_i109.IUnlikePost>(
      () => _i4.UnlikePostImpl(gh<_i404.ILikePostRemoteService>()),
    );
    gh.lazySingleton<_i433.IDeletePost>(
      () => _i727.DeletePostImpl(gh<_i803.IPostRemoteService>()),
    );
    gh.lazySingleton<_i433.IGetPostById>(
      () => _i510.GetPostByIdImpl(gh<_i803.IPostRemoteService>()),
    );
    gh.lazySingleton<_i433.IGetPostCounts>(
      () => _i47.GetPostCountsImpl(gh<_i803.IPostRemoteService>()),
    );
    gh.lazySingleton<_i433.IGetPosts>(
      () => _i417.GetPostsImpl(gh<_i803.IPostRemoteService>()),
    );
    gh.lazySingleton<_i433.IDecreaseLikesPostCount>(
      () => _i954.DecreaseLikesPostCountImpl(gh<_i803.IPostRemoteService>()),
    );
    gh.lazySingleton<_i433.IIncreaseLikesPostCount>(
      () => _i650.IncreaseLikesPostCountImpl(gh<_i803.IPostRemoteService>()),
    );
    gh.factory<_i1033.AuthBloc>(
      () => _i1033.AuthBloc(
        gh<_i1061.ISignInWithEmail>(),
        gh<_i1061.ISignUpWithEmail>(),
        gh<_i1061.IVerificationEmail>(),
        gh<_i1061.ISignOut>(),
      ),
    );
    gh.lazySingleton<_i197.IDecreaseFollowings>(
      () => _i323.DecrementFollowingsImpl(
        gh<_i165.ICurrentUserRemoteService>(),
        gh<_i878.IUserLocalService>(),
      ),
    );
    gh.lazySingleton<_i762.ILikeMessage>(
      () => _i234.LikeMessageImpl(gh<_i273.IMessageRemoteService>()),
    );
    gh.lazySingleton<_i762.ICreateMessage>(
      () => _i40.CreateMessageImpl(gh<_i273.IMessageRemoteService>()),
    );
    gh.lazySingleton<_i283.IUpdateChatRoom>(
      () => _i166.UpdateChatImpl(gh<_i46.IChatRemoteService>()),
    );
    gh.lazySingleton<_i197.IUpdateCurrentUser>(
      () => _i748.UpdateCurrentUserImpl(
        gh<_i165.ICurrentUserRemoteService>(),
        gh<_i878.IUserLocalService>(),
      ),
    );
    gh.lazySingleton<_i273.IIncreaseFollowers>(
      () => _i389.IncreaseFollowersImpl(gh<_i32.IViewerUserRemoteService>()),
    );
    gh.lazySingleton<_i762.IDeleteMessage>(
      () => _i957.DeleteMessageImpl(gh<_i273.IMessageRemoteService>()),
    );
    gh.lazySingleton<_i197.IIncreaseFollowings>(
      () => _i520.IncrementFollowingsImpl(
        gh<_i165.ICurrentUserRemoteService>(),
        gh<_i878.IUserLocalService>(),
      ),
    );
    gh.lazySingleton<_i197.IGetCurrentUserById>(
      () => _i540.GetCurrentUserByIdImpl(
        gh<_i165.ICurrentUserRemoteService>(),
        gh<_i878.IUserLocalService>(),
      ),
    );
    return this;
  }
}

class _$InjectableModule extends _i147.InjectableModule {}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@Freezed(copyWith: false, equal: false, fromJson: false, toJson: false)
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.success() = Success;
  const factory AuthState.failure([String? message]) = Failure;

  const factory AuthState.checkSignedIn() = CheckSignedIn;
  const factory AuthState.notSignedIn() = NotSignedIn;
  const factory AuthState.alreadySignedIn() = AlreadySignedIn;
}

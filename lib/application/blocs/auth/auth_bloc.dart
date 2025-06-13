import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/failures/base_failure.dart';
import '../../../domain/repositories/auth/i_auth_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ISignInWithEmail _iSignInWithEmail;
  final ISignUpWithEmail _iSignUpWithEmail;
  final IVerificationEmail _iVerificationEmail;
  final ISignOut _iSignOut;

  AuthBloc(
    this._iSignInWithEmail,
    this._iSignUpWithEmail,
    this._iVerificationEmail,
    this._iSignOut,
  ) : super(AuthState.initial()) {
    on<SignInWithEmailEvent>(
      _onSignInWithEmailAndPassword,
      transformer: droppable(),
    );
    on<SignUpWithEmailEvent>(
      _onSignUpWithEmailAndPassword,
      transformer: droppable(),
    );
    on<VerificationEmailEvent>(_onVerificationEmail, transformer: droppable());
    on<SignOutEvent>(_onSignOut, transformer: droppable());
  }

  Future<Unit> _onSignInWithEmailAndPassword(
    SignInWithEmailEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthState.loading());

    final facade = await _iSignInWithEmail.call(
      email: event.email,
      password: event.password,
    );

    facade.fold(
      (failure) {
        emit(AuthState.failure(_mapFailureToMessage(failure)));
      },
      (success) {
        emit(AuthState.success());
      },
    );
    return unit;
  }

  Future<Unit> _onSignUpWithEmailAndPassword(
    SignUpWithEmailEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthState.loading());

    final facade = await _iSignUpWithEmail.call(
      fullName: event.fullName,
      emailAddress: event.emailAddress,
      phoneNumber: event.phoneNumber,
      birthDate: event.birthDate,
      gender: event.gender,
      address: event.address,
      password: event.password,
      confirmPassword: event.confirmPassword,
    );

    facade.fold(
      (failure) {
        emit(AuthState.failure(_mapFailureToMessage(failure)));
      },
      (success) {
        emit(AuthState.success());
      },
    );
    return unit;
  }

  Future<Unit> _onVerificationEmail(
    VerificationEmailEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthState.loading());

    final facade = await _iVerificationEmail.call(emailAddress: event.email);

    facade.fold(
      (failure) {
        emit(AuthState.failure(_mapFailureToMessage(failure)));
      },
      (success) {
        emit(AuthState.success());
      },
    );
    return unit;
  }

  Future<Unit> _onSignOut(SignOutEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());

    final facade = await _iSignOut.call();

    facade.fold(
      (failure) {
        emit(AuthState.failure(_mapFailureToMessage(failure)));
      },
      (success) {
        emit(AuthState.success());
      },
    );
    return unit;
  }

  String _mapFailureToMessage(BaseFailure failure) {
    if (failure is SessionExpired) {
      return failure.message ?? 'Session has expired';
    } else if (failure is FromServerException) {
      return failure.serverMessage ?? 'Server error occurred';
    } else if (failure is FromCacheException) {
      return failure.cacheMessage ?? 'Cache error occurred';
    } else if (failure is Offline) {
      return failure.message ?? 'No internet connection';
    } else if (failure is Unexpected) {
      return failure.message ?? 'An unexpected error occurred';
    }
    return 'Unknown error';
  }
}

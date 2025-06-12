import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

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
    on<AuthEvent>(_onSignInWithEmailAndPassword);
  }

  Future<Unit> _onSignInWithEmailAndPassword(
    AuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    return unit;
  }
}

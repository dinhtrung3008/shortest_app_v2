import '../../../domain/value_object/auth/auth_value_object.dart';
import '../../base/base_presenter_has_bloc.dart';
import '../../base/base_view_state_has_bloc.dart';
import '../../../application/blocs/auth/auth_bloc.dart';
import '../../../application/blocs/auth/auth_event.dart';
import '../../../application/blocs/auth/auth_state.dart';

abstract class SignInView extends BaseViewHasBloc {
  void onNavigateToHome();
}

class SignInPresenter extends BasePresenterHasBloc<SignInView, AuthBloc> {
  SignInPresenter();

  @override
  void onViewAttached() {
    super.onViewAttached();
    bloc?.stream.listen(_handleState);
  }

  void _handleState(AuthState state) {
    if (!isViewAttached) return;

    switch (state) {
      case Loading():
        view?.showLoading();
        break;
      case Success():
        view?.hideLoading();
        view?.onNavigateToHome();
        break;
      case Failure():
        view?.hideLoading();
        view?.onFailure(message: state.message ?? 'An error occurred');
        break;
      default:
        break;
    }
  }

  void signInWithEmail({
    required EmailAddress email,
    required Password password,
  }) {
    if (email.isRight() && password.isRight()) {
      bloc?.add(SignInWithEmailEvent(email: email, password: password));
    }
  }
}

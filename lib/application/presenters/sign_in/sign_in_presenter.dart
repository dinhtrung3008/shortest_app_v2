import '../../bloc/auth/auth_bloc.dart';
import '../../bloc/auth/auth_event.dart';
import '../../bloc/auth/auth_state.dart';
import '../../../domain/value_object/auth/auth_value_object.dart';
import '../../../presentation/base/base_presenter_has_bloc.dart';
import '../../../presentation/base/base_view_state_has_bloc.dart';

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

    if (state is Loading) {
      view?.showLoading();
    } else if (state is Success) {
      view?.hideLoading();
      view?.onNavigateToHome();
    } else if (state is Failure) {
      view?.hideLoading();
      view?.onFailure(message: state.message ?? 'An error occurred');
    }
  }

  void signInWithEmail({required EmailAddress email, required Password password}) {
    if (email.isRight() && password.isRight()) {
      bloc?.add(SignInWithEmailEvent(email: email, password: password));
    }
  }
}

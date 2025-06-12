import '../../bloc/auth/auth_bloc.dart';
import '../../bloc/auth/auth_event.dart';
import '../../bloc/auth/auth_state.dart';
import '../../../domain/value_object/auth/auth_value_object.dart';
import '../../../presentation/base/base_presenter_has_bloc.dart';
import '../../../presentation/base/base_view_state_has_bloc.dart';

abstract class SignUpView extends BaseViewHasBloc {
  void onPop();
}

class SignUpPresenter extends BasePresenterHasBloc<SignUpView, AuthBloc> {
  SignUpPresenter();

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
      view?.onPop();
    } else if (state is Failure) {
      view?.hideLoading();
      view?.onFailure(message: state.message ?? 'An error occurred');
    }
  }

  void signUpWithEmail({
    required FullName fullName,
    required EmailAddress email,
    required PhoneNumber phoneNumber,
    required BirthDate birthDate,
    required Gender gender,
    required Address address,
    required Password password,
    required ConfirmPassword confirmPassword,
  }) {
    if (fullName.isRight() &&
        email.isRight() &&
        phoneNumber.isRight() &&
        birthDate.isRight() &&
        gender.isRight() &&
        address.isRight() &&
        password.isRight() &&
        confirmPassword.isRight()) {
      bloc?.add(
        SignUpWithEmailEvent(
          fullName: fullName,
          emailAddress: email,
          phoneNumber: phoneNumber,
          birthDate: birthDate,
          gender: gender,
          address: address,
          password: password,
          confirmPassword: confirmPassword,
        ),
      );
    }
  }
}

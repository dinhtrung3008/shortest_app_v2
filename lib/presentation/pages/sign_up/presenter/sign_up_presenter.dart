import 'package:shortest_app/application/bloc/auth/auth_bloc.dart';

import '../../../base/base_presenter.dart';
import '../../../base/base_view.dart';

abstract class SignUpView extends BaseView {
  void onSignUpSuccess(String success);
  void onSignUpFailure(String failure);
}

class SignUpPresenter extends BasePresenter<SignUpView> {
  final AuthBloc authBloc;

  SignUpPresenter({required this.authBloc});

  @override
  void onViewAttached() {
    super.onViewAttached();
    loadUsers();
  }

  void loadUsers() {
    // authBloc.add(LoadUsers());
  }

  void createUser(String name, String email) {
    // authBloc.add(CreateUser(name: name, email: email));
  }

  // void handleState(UserState state) {
  //   if (!isViewAttached) return;

  //   if (state is UserLoading) {
  //     view?.showLoading();
  //   } else if (state is UserLoaded) {
  //     view?.hideLoading();
  //     view?.showUsers(state.users);
  //   } else if (state is UserError) {
  //     view?.hideLoading();
  //     view?.showError(state.message);
  //   }
  // }

  @override
  void dispose() {
    authBloc.close();
    super.dispose();
  }
}

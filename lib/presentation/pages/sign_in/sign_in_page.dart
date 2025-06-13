import 'package:flutter/material.dart';

import '../../../application/blocs/auth/auth_bloc.dart';
import '../../../application/presenters/sign_in/sign_in_presenter.dart';
import '../../../domain/value_object/auth/auth_value_object.dart';
import '../../../infrastructure/core/di/infrastructure_injection.dart';
import '../../base/base_view_state_has_bloc.dart';
import '../../core/utils/navigator/navigator_service.dart';
import '../home/home_page.dart';
import '../sign_up/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState
    extends BaseViewStateHasBloc<SignInPage, SignInPresenter, AuthBloc>
    implements SignInView {
  @override
  AuthBloc createBloc() => injector<AuthBloc>();

  @override
  SignInPresenter createPresenter() => SignInPresenter();

  @override
  void onNavigateToHome() {
    NavigationService().navigateAndRemoveAll(HomePage());
  }

  @override
  Widget buildContent() {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed:
                  () => presenter.signInWithEmail(
                    email: EmailAddress('test@shortest.co'),
                    password: Password('test123456'),
                  ),
              child: const Text(
                'Sign In with Email',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () => NavigationService().navigateToPage(SignUpPage()),
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

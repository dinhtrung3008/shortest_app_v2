import 'package:flutter/material.dart';

import '../../../application/bloc/auth/auth_bloc.dart';
import '../../../domain/value_object/auth/auth_value_object.dart';
import '../../../infrastructure/core/di/infrastructure_injection.dart';
import '../../base/base_view_state_has_bloc.dart';
import 'presenter/sign_up_presenter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends BaseViewStateHasBloc<SignUpPage, SignUpPresenter, AuthBloc> implements SignUpView {
  @override
  AuthBloc createBloc() => injector<AuthBloc>();

  @override
  SignUpPresenter createPresenter() => SignUpPresenter();

  @override
  void onPop() {
    Navigator.of(context).pop();
  }

  @override
  Widget buildContent() {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Center(
        child: ElevatedButton(
          onPressed:
              () => presenter.signUpWithEmail(
                fullName: FullName('JohnDoe'),
                email: EmailAddress('test1@shortest.co'),
                phoneNumber: PhoneNumber('0396071116'),
                birthDate: BirthDate(DateTime(1998, 08, 30).toUtc().toIso8601String()),
                gender: Gender('male'),
                address: Address('123 Main St'),
                password: Password('test123456'),
                confirmPassword: ConfirmPassword('test123456', 'test123456'),
              ),
          child: const Text('Sign Up with Email', style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}

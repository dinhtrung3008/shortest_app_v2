import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_presenter_has_bloc.dart';

abstract class BaseViewHasBloc {
  void showLoading();
  void hideLoading();
  void onFailure({String? message});
  void onSuccess({String? message});
}

abstract class BaseViewStateHasBloc<T extends StatefulWidget, P extends BasePresenterHasBloc, B extends BlocBase>
    extends State<T>
    implements BaseViewHasBloc {
  late P presenter;
  late B bloc;

  P createPresenter();
  B createBloc();

  final ValueNotifier<bool> _isLoadingNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    bloc = createBloc();
    presenter = createPresenter();
    presenter.attachView(this, this.bloc);
    super.initState();
  }

  @override
  void dispose() {
    _isLoadingNotifier.dispose();
    presenter.dispose();
    bloc.close();
    super.dispose();
  }

  @override
  void showLoading() {
    _isLoadingNotifier.value = true;
  }

  @override
  void hideLoading() {
    _isLoadingNotifier.value = false;
  }

  @override
  void onFailure({String? message}) {
    if (mounted && message != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
    }
  }

  @override
  void onSuccess({String? message}) {
    if (mounted && message != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.green));
    }
  }

  Widget buildLoadingWidget() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget buildContent();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>(
      create: (_) => bloc,
      child: Stack(
        children: [
          buildContent(),
          ValueListenableBuilder<bool>(
            valueListenable: _isLoadingNotifier,
            builder: (_, isLoading, _) {
              if (isLoading) {
                return Container(color: Colors.black26, child: buildLoadingWidget());
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}

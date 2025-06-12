import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_view_state_has_bloc.dart';

abstract class BasePresenterHasBloc<T extends BaseViewHasBloc, B extends BlocBase> {
  T? _view;
  B? _bloc;
  bool _isViewAttached = false;

  void attachView(T view, B bloc) {
    _view = view;
    _bloc = bloc;
    _isViewAttached = true;
    onViewAttached();
  }

  void detachView() {
    _view = null;
    _bloc = null;
    _isViewAttached = false;
    onViewDetached();
  }

  bool get isViewAttached => _isViewAttached;
  T? get view => _view;
  B? get bloc => _bloc;

  void onViewAttached() {}
  void onViewDetached() {}

  void dispose() {
    detachView();
  }
}

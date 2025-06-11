import 'base_view.dart';

abstract class BasePresenter<T extends BaseView> {
  T? _view;
  bool _isViewAttached = false;

  void attachView(T view) {
    _view = view;
    _isViewAttached = true;
    onViewAttached();
  }

  void detachView() {
    _view = null;
    _isViewAttached = false;
    onViewDetached();
  }

  bool get isViewAttached => _isViewAttached;
  T? get view => _view;

  void onViewAttached() {}
  void onViewDetached() {}

  void dispose() {
    detachView();
  }
}

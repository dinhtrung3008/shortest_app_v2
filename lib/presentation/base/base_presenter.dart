import 'package:flutter/widgets.dart';

import '../../l10n/app_localizations.dart';
import '../../l10n/app_localizations_en.dart';
import 'base_view_state.dart';

abstract class BasePresenter<T extends BaseView> {
  T? _view;
  AppLocalizations? _l10n;
  bool _isViewAttached = false;

  void attachView(T view, BuildContext context) {
    _view = view;
    _isViewAttached = true;
    _l10n = AppLocalizations.of(context) ?? AppLocalizationsEn();
    onViewAttached();
  }

  void detachView() {
    _view = null;
    _l10n = null;
    _isViewAttached = false;
    onViewDetached();
  }

  bool get isViewAttached => _isViewAttached;
  T? get view => _view;
  AppLocalizations? get l10n => _l10n;

  void onViewAttached() {}
  void onViewDetached() {}

  void dispose() {
    detachView();
  }
}

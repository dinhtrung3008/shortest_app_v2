import 'package:flutter/material.dart';

import 'base_presenter.dart';

abstract class BaseWidget<P extends BasePresenter> extends StatefulWidget {
  const BaseWidget({super.key});

  P createPresenter();
}

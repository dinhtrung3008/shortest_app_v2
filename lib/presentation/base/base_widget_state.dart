import 'package:flutter/material.dart';
import 'package:shortest_app/presentation/base/base_view.dart';

import 'base_presenter.dart';
import 'base_widget.dart';

abstract class BaseWidgetState<T extends BaseWidget<P>, P extends BasePresenter> extends State<T> implements BaseView {
  late P presenter;
  ValueNotifier<bool> isLoadingNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    presenter = widget.createPresenter();
    presenter.attachView(this as dynamic);
  }

  @override
  void dispose() {
    isLoadingNotifier.dispose();
    presenter.dispose();
    super.dispose();
  }

  @override
  void showLoading() {
    isLoadingNotifier.value = true;
  }

  @override
  void hideLoading() {
    isLoadingNotifier.value = false;
  }

  @override
  void showError(String message) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
    }
  }

  @override
  void showSuccess(String message) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.green));
    }
  }

  bool get isLoading => isLoadingNotifier.value;

  Widget buildLoadingWidget() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget buildContent();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildContent(),
        // Sử dụng ValueListenableBuilder để listen thay đổi
        ValueListenableBuilder<bool>(
          valueListenable: isLoadingNotifier,
          builder: (context, isLoading, child) {
            if (isLoading) {
              return Container(color: Colors.black26, child: buildLoadingWidget());
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}

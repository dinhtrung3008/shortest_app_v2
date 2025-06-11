import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // Điều hướng đến một màn hình mới bằng MaterialPageRoute
  Future<dynamic>? navigateToPage(Widget page) {
    return navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Điều hướng và thay thế màn hình hiện tại bằng MaterialPageRoute
  Future<dynamic>? navigateAndReplacePage(Widget page) {
    return navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Điều hướng và xoá hết các màn hình trước đó bằng MaterialPageRoute
  Future<dynamic>? navigateAndRemoveAll(Widget page) {
    return navigatorKey.currentState?.pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
      (Route<dynamic> route) => false,
    );
  }

  // Hiển thị một dialog
  Future<void> showDialog({required Widget dialog}) {
    return showGeneralDialog(
      context: navigatorKey.currentContext!,
      barrierDismissible: false,
      barrierLabel: MaterialLocalizations.of(navigatorKey.currentContext!).modalBarrierDismissLabel,
      barrierColor: Colors.black54,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (context, animation, secondaryAnimation) {
        return dialog;
      },
    );
  }

  // Trở về màn hình trước đó
  void pop() {
    if (navigatorKey.currentState?.canPop() ?? false) {
      navigatorKey.currentState?.pop();
    }
  }
}

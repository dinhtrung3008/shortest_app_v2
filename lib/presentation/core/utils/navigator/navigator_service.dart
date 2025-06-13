import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavigationService {
  static final NavigationService _instance = NavigationService._internal();
  factory NavigationService() => _instance;

  NavigationService._internal();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // Điều hướng đến một màn hình mới bằng MaterialPageRoute
  Future<dynamic>? navigateToPage(Widget page) {
    try {
      return navigatorKey.currentState?.push(
        MaterialPageRoute(builder: (context) => page),
      );
    } catch (e) {
      if (kDebugMode) {
        print('Error navigating to page: $e');
      }
      return null;
    }
  }

  // Điều hướng và thay thế màn hình hiện tại bằng MaterialPageRoute
  Future<dynamic>? navigateAndReplacePage(Widget page) {
    try {
      return navigatorKey.currentState?.pushReplacement(
        MaterialPageRoute(builder: (context) => page),
      );
    } catch (e) {
      if (kDebugMode) {
        print('Error navigating and replacing page: $e');
      }
      return null;
    }
  }

  // Điều hướng và xoá hết các màn hình trước đó bằng MaterialPageRoute
  Future<dynamic>? navigateAndRemoveAll(Widget page) {
    try {
      return navigatorKey.currentState?.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page),
        (Route<dynamic> route) => false,
      );
    } catch (e) {
      if (kDebugMode) {
        print('Error navigating and removing all pages: $e');
      }
      return null;
    }
  }

  // Hiển thị một dialog
  Future<void> showDialog({required Widget dialog}) {
    BuildContext? context = navigatorKey.currentContext;
    if (context == null) return Future.value();

    try {
      return showGeneralDialog(
        context: context,
        barrierDismissible: false,
        barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black54,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (context, animation, secondaryAnimation) {
          return dialog;
        },
      );
    } catch (e) {
      if (kDebugMode) {
        print('Error showing dialog: $e');
      }
      return Future.value();
    }
  }

  // Trở về màn hình trước đó
  void pop() {
    try {
      if (navigatorKey.currentState?.canPop() ?? false) {
        navigatorKey.currentState?.pop();
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error popping page: $e');
      }
    }
  }
}

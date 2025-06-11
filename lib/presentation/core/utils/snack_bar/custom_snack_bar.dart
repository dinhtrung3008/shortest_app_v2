import 'package:flutter/material.dart';

class CustomSnackBar {
  static void showSnackBar(BuildContext context, String title, {int milliseconds = 1000}) {
    _buildSnackBar(
      context,
      title,
      icon: const Padding(
        padding: EdgeInsets.only(right: 8),
        child: Icon(Icons.check_circle, color: Colors.white),
      ),
      duration: Duration(milliseconds: milliseconds),
      backgroundColor: Colors.green,
    );
  }

  static void showWarningSnackBar(BuildContext context, String title, {int milliseconds = 1000}) {
    _buildSnackBar(
      context,
      title,
      textStyle: const TextStyle(color: Colors.black),
      icon: const Padding(
        padding: EdgeInsets.only(right: 8),
        child: Icon(Icons.warning, color: Colors.black),
      ),
      duration: Duration(milliseconds: milliseconds),
      backgroundColor: Colors.yellow,
    );
  }

  static void showErrorSnackBar(BuildContext context, String title, {int milliseconds = 1000}) {
    _buildSnackBar(
      context,
      title,
      icon: const Padding(
        padding: EdgeInsets.only(right: 8),
        child: Icon(Icons.error, color: Colors.white),
      ),
      duration: Duration(milliseconds: milliseconds),
      backgroundColor: Colors.red,
    );
  }

  static void _buildSnackBar(
    BuildContext context,
    String title, {
    required Duration duration,
    Widget? icon,
    Color backgroundColor = Colors.black87,
    TextStyle? textStyle,
  }) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          if (icon != null) icon,
          Expanded(
            child: Text(
              title,
              style: textStyle ?? const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      duration: duration,
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

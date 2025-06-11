import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppThemes {
  // Light Mode Colors
  final Color primaryLightColor = Colors.redAccent;
  final Color secondaryLightColor = Colors.lightBlue;
  final Color backgroundPrimaryLightColor = Colors.white;
  final Color blackColor = Colors.black;
  final Color whiteColor = Colors.white;
  final Color iconWhiteColor = Colors.white;
  final Color greyColor = Colors.grey;

  final Color verifiedColor = Colors.lightBlue;
  final Color unVerifiedColor = Colors.grey;

  // Dark Mode Colors (Contrasting)
  final Color primaryDark = Colors.redAccent;
  final Color backgroundDark = Colors.black;
  final Color textPrimaryDark = Colors.white;
  final Color textSecondaryDark = Colors.grey;
  final Color accentDark = Colors.tealAccent;

  ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryLightColor,
      scaffoldBackgroundColor: backgroundPrimaryLightColor,
      appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0,
        backgroundColor: backgroundPrimaryLightColor,
      ),
      colorScheme: ColorScheme.light(
        primary: primaryLightColor,
        secondary: backgroundPrimaryLightColor,
        surface: backgroundPrimaryLightColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: primaryLightColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: backgroundPrimaryLightColor,
        selectedItemColor: primaryLightColor,
        unselectedItemColor: greyColor,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: blackColor),
        hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: greyColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: greyColor, width: 0.5),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: blackColor, width: 0.5),
          gapPadding: 10,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: primaryLightColor, width: 0.5),
          gapPadding: 10,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: primaryLightColor, width: 0.5),
          gapPadding: 10,
        ),
      ),
    );
  }
}

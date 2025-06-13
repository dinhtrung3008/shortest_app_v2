import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'l10n/app_localizations.dart';
import 'presentation/core/mixins/resources_app.dart';
import 'presentation/core/utils/navigator/navigator_service.dart';
import 'presentation/pages/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget with ResourcesApp {
  AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark),
    );

    return MaterialApp(
      theme: appColors.lightTheme,
      themeMode: ThemeMode.light,
      navigatorKey: NavigationService().navigatorKey,
      locale: AppLocalizations.supportedLocales.first,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SignInPage(),
    );
  }
}

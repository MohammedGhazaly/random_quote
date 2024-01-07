import 'package:flutter/material.dart';
import 'package:quote_gen_clean_arc/config/routes/app_routes.dart';
import 'package:quote_gen_clean_arc/config/theme/app_theme.dart';
import 'package:quote_gen_clean_arc/core/utils/app_strings.dart';

class RandomQuoteApp extends StatelessWidget {
  const RandomQuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.splashScreen,
      onGenerateRoute: AppRouter.onGenerateRoute,
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.mainTheme(),
      // home: MyCustomSplashScreen(),
    );
  }
}

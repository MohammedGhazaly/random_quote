import 'package:flutter/material.dart';
import 'package:quote_gen_clean_arc/config/theme/app_theme.dart';
import 'package:quote_gen_clean_arc/core/utils/app_strings.dart';
import 'package:quote_gen_clean_arc/features/random_quote/presentation/screens/quote_screen.dart';

class RandomQuoteApp extends StatelessWidget {
  const RandomQuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.mainTheme(),
      home: const QuoteScreen(),
    );
  }
}

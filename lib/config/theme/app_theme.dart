import 'package:flutter/material.dart';
import 'package:quote_gen_clean_arc/core/utils/app_colors.dart';
import 'package:quote_gen_clean_arc/core/utils/app_strings.dart';

class AppTheme {
  static ThemeData mainTheme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.primaryColor,
      fontFamily: AppStrings.appFontFamily,
      hintColor: AppColors.hintColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
    );
  }
}

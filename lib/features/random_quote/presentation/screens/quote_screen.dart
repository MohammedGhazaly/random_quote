import 'package:flutter/material.dart';
import 'package:quote_gen_clean_arc/core/utils/app_strings.dart';
import 'package:quote_gen_clean_arc/core/utils/app_styles.dart';
import 'package:quote_gen_clean_arc/features/random_quote/presentation/widgets/random_quotes_body.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.splashScreenText,
          style: AppTextStyles.styleMedium20,
        ),
      ),
      body: RandomQuotesBody(),
    );
  }
}

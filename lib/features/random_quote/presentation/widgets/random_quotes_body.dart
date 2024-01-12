import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quote_gen_clean_arc/core/widgets/quote_error_widget.dart';
import 'package:quote_gen_clean_arc/features/random_quote/presentation/widgets/random_quote_content.dart';

class RandomQuotesBody extends StatelessWidget {
  const RandomQuotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return QuoteErrorWidget();

    // RandomQuoteContent();
  }
}

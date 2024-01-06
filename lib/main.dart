import 'package:flutter/material.dart';
import 'package:quote_gen_clean_arc/features/random_quote/presentation/screens/quote_screen.dart';

void main() {
  runApp(const RandomQuoteApp());
}

class RandomQuoteApp extends StatelessWidget {
  const RandomQuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const QuoteScreen(),
    );
  }
}

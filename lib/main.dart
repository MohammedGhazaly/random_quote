import 'package:flutter/material.dart';
import 'package:quote_gen_clean_arc/app/app.dart';
import 'package:quote_gen_clean_arc/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const RandomQuoteApp());
}

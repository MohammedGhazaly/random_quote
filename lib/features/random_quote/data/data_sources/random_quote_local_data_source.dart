import 'dart:convert';

import 'package:quote_gen_clean_arc/core/error/exceptions.dart';
import 'package:quote_gen_clean_arc/core/utils/app_strings.dart';
import 'package:quote_gen_clean_arc/features/random_quote/data/models/quote_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class RandomQuoteLocalDataSource {
  Future<QuoteModel> getLastCachedRandomQuote();
  Future<void> cacheLastFetchedQuote(QuoteModel quote);
}

class RandomQuoteLocalDataSourceImpl implements RandomQuoteLocalDataSource {
  final SharedPreferences sharedPreferences;
  RandomQuoteLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<QuoteModel> getLastCachedRandomQuote() {
    final jsonString = sharedPreferences.getString(AppStrings.cacheKey);
    if (jsonString != null) {
      final cachedRandomQuote = QuoteModel.fromJson(jsonDecode(jsonString));
      return Future.value(cachedRandomQuote);
    } else {
      throw CacheExceptions();
    }
  }

  @override
  Future<void> cacheLastFetchedQuote(QuoteModel quote) async {
    await sharedPreferences.setString(AppStrings.cacheKey, jsonEncode(quote));
  }
}

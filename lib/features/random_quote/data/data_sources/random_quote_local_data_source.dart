import 'package:quote_gen_clean_arc/features/random_quote/data/models/quote_model.dart';

abstract class RandomQuoteLocalDataSource {
  Future<QuoteModel> getLastCachedRandomQuote();
  Future<void> cacheLastFetchedQuote(QuoteModel quote);
}

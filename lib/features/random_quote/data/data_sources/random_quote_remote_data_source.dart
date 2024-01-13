import 'dart:convert';

import 'package:quote_gen_clean_arc/core/api/api_constants.dart';
import 'package:quote_gen_clean_arc/core/error/exceptions.dart';
import 'package:quote_gen_clean_arc/features/random_quote/data/models/quote_model.dart';
import "package:http/http.dart" as http;

abstract class RandomQuoteRemoteDataSource {
  Future<QuoteModel> getRandomQuote();
}

class RandomQuoteRemoteDataSourceImpl implements RandomQuoteRemoteDataSource {
  final http.Client client;

  RandomQuoteRemoteDataSourceImpl({required this.client});
  @override
  Future<QuoteModel> getRandomQuote() async {
    print(ApiConstants.randomQuoteEndPoint);
    final response = await client.get(
      Uri.parse(
        ApiConstants.randomQuoteEndPoint,
      ),
    );

    if (response.statusCode == 200) {
      return QuoteModel.fromJson(jsonDecode(response.body));
    } else {
      throw ServerExceptions();
    }
  }
}

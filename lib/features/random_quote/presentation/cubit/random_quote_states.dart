import 'package:quote_gen_clean_arc/features/random_quote/domain/entities/quote_entity.dart';

abstract class RandomQuoteStates {}

class RandomQuoteInitial extends RandomQuoteStates {}

class RandomQuoteLoading extends RandomQuoteStates {}

class RandomQuoteFailure extends RandomQuoteStates {
  final String errorMessage;

  RandomQuoteFailure({required this.errorMessage});
}

class RandomQuoteSuccess extends RandomQuoteStates {
  final QuoteEntity quote;

  RandomQuoteSuccess({required this.quote});
}

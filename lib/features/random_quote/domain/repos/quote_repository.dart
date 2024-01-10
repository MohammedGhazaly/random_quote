import 'package:dartz/dartz.dart';
import 'package:quote_gen_clean_arc/core/error/failures.dart';
import 'package:quote_gen_clean_arc/features/random_quote/domain/entities/quote_entity.dart';

abstract class QuoteRepository {
  Future<Either<Failures, QuoteEntity>> getRandomQuote();
}

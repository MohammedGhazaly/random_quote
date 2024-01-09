import 'package:dartz/dartz.dart';
import 'package:quote_gen_clean_arc/core/error/failures.dart';
import 'package:quote_gen_clean_arc/core/usecases/usecase.dart';
import 'package:quote_gen_clean_arc/features/random_quote/domain/entities/quote_entity.dart';

class GetRandomQuote implements UseCase<QuoteEntity, NoParam> {
  @override
  Future<Either<Failures, QuoteEntity>> call(NoParam params) {
    throw UnimplementedError();
  }

  // In case we use arguments
  // final QuoteRepository quoteRepository;
  // @override
  // Future<Either<Failures, QuoteEntity>> call(LoginParams params) {
  //   quoteRepository.get(params.userName, params.password);
  // }
  // @override
  // Future<Either<Failures, QuoteEntity>> call(LoginParams params) {
  // TODO: implement call
  //   throw UnimplementedError();
  // }
}

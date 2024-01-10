import 'package:dartz/dartz.dart';
import 'package:quote_gen_clean_arc/core/error/exceptions.dart';
import 'package:quote_gen_clean_arc/core/error/failures.dart';
import 'package:quote_gen_clean_arc/core/network/network_info.dart';
import 'package:quote_gen_clean_arc/features/random_quote/data/data_sources/random_quote_local_data_source.dart';
import 'package:quote_gen_clean_arc/features/random_quote/data/data_sources/random_quote_remote_data_source.dart';
import 'package:quote_gen_clean_arc/features/random_quote/data/models/quote_model.dart';
import 'package:quote_gen_clean_arc/features/random_quote/domain/repos/quote_repository.dart';

class QuoteRepositoryImpl implements QuoteRepository {
  final NetworkInfo networkInfo;
  final RandomQuoteRemoteDataSource randomQuoteRemoteDataSource;
  final RandomQuoteLocalDataSource randomQuoteLocalDataSource;

  QuoteRepositoryImpl({
    required this.networkInfo,
    required this.randomQuoteLocalDataSource,
    required this.randomQuoteRemoteDataSource,
  });
  @override
  Future<Either<Failures, QuoteModel>> getRandomQuote() async {
    if (await networkInfo.isConnected) {
      try {
        final QuoteModel quoteModel =
            await randomQuoteRemoteDataSource.getRandomQuote();
        return Right(quoteModel);
      } on ServerExceptions {
        return Left(ServerFailure());
      }
    } else {
      try {
        final QuoteModel cachedRandomQuote =
            await randomQuoteLocalDataSource.getLastCachedRandomQuote();
        return Right(cachedRandomQuote);
      } on CacheExceptions {
        return Left(CacheFailure());
      }
    }
  }
}

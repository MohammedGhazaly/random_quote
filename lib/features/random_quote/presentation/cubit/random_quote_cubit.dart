import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_gen_clean_arc/core/error/failures.dart';
import 'package:quote_gen_clean_arc/core/usecases/usecase.dart';
import 'package:quote_gen_clean_arc/core/utils/app_strings.dart';
import 'package:quote_gen_clean_arc/features/random_quote/domain/entities/quote_entity.dart';
import 'package:quote_gen_clean_arc/features/random_quote/domain/use_cases/get_random_quote_use_case.dart';
import 'package:quote_gen_clean_arc/features/random_quote/presentation/cubit/random_quote_states.dart';

class RandomQuoteCubit extends Cubit<RandomQuoteStates> {
  final GetRandomQuoteUseCase getRandomQuoteUseCase;
  RandomQuoteCubit({required this.getRandomQuoteUseCase})
      : super(RandomQuoteInitial());

  Future<void> getRandomQuote() async {
    emit(RandomQuoteLoading());
    Either<Failures, QuoteEntity> response = await getRandomQuoteUseCase.call(
      NoParam(),
    );
    print("aaaaaaaaa");
    response.fold((failure) {
      emit(RandomQuoteFailure(errorMessage: _mapFailureToString(failure)));
    }, (quote) {
      emit(RandomQuoteSuccess(quote: quote));
    });
  }

  String _mapFailureToString(Failures failures) {
    switch (failures.runtimeType) {
      case ServerFailure:
        return AppStrings.serverFailure;
      case CacheFailure:
        return AppStrings.cacheFailure;
      default:
        return AppStrings.unExpectedError;
    }
  }
}

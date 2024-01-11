import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_gen_clean_arc/features/random_quote/presentation/cubit/random_quote_states.dart';

class RandomQuoteCubit extends Cubit<RandomQuoteStates> {
  RandomQuoteCubit() : super(RandomQuoteInitial());
}

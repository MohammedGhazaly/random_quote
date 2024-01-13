import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:quote_gen_clean_arc/core/utils/app_colors.dart';
import 'package:quote_gen_clean_arc/core/widgets/quote_error_widget.dart';
import 'package:quote_gen_clean_arc/features/random_quote/presentation/cubit/random_quote_cubit.dart';
import 'package:quote_gen_clean_arc/features/random_quote/presentation/cubit/random_quote_states.dart';
import 'package:quote_gen_clean_arc/features/random_quote/presentation/widgets/random_quote_content.dart';

class RandomQuotesBody extends StatelessWidget {
  const RandomQuotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RandomQuoteCubit, RandomQuoteStates>(
      builder: (context, state) {
        if (state is RandomQuoteLoading) {
          return SpinKitFadingCircle(
            color: AppColors.primaryColor,
          );
        } else if (state is RandomQuoteSuccess) {
          return RandomQuoteContent();
        } else if (state is RandomQuoteFailure) {
          return QuoteErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return Text("asdas");
        }
      },
    );
  }
}

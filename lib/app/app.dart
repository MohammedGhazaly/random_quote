import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:quote_gen_clean_arc/config/routes/app_routes.dart';
import 'package:quote_gen_clean_arc/config/theme/app_theme.dart';
import 'package:quote_gen_clean_arc/core/network/network_info.dart';
import 'package:quote_gen_clean_arc/core/utils/app_strings.dart';
import 'package:quote_gen_clean_arc/features/random_quote/data/data_sources/random_quote_local_data_source.dart';
import 'package:quote_gen_clean_arc/features/random_quote/data/data_sources/random_quote_remote_data_source.dart';
import 'package:quote_gen_clean_arc/features/random_quote/data/repos/quote_repository_impl.dart';
import 'package:quote_gen_clean_arc/features/random_quote/domain/use_cases/get_random_quote_use_case.dart';
import 'package:quote_gen_clean_arc/features/random_quote/presentation/cubit/random_quote_cubit.dart';
import 'package:quote_gen_clean_arc/locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RandomQuoteApp extends StatelessWidget {
  const RandomQuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RandomQuoteCubit>(create: (context) {
          return serviceLocator.get<RandomQuoteCubit>()..getRandomQuote();
        })
      ],
      child: MaterialApp(
        initialRoute: AppRoutes.splashScreen,
        onGenerateRoute: AppRouter.onGenerateRoute,
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.mainTheme(),
        // home: MyCustomSplashScreen(),
      ),
    );
  }
}

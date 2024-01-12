import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:quote_gen_clean_arc/core/network/network_info.dart';
import 'package:quote_gen_clean_arc/features/random_quote/data/data_sources/random_quote_local_data_source.dart';
import 'package:quote_gen_clean_arc/features/random_quote/data/data_sources/random_quote_remote_data_source.dart';
import 'package:quote_gen_clean_arc/features/random_quote/data/repos/quote_repository_impl.dart';
import 'package:quote_gen_clean_arc/features/random_quote/domain/repos/quote_repository.dart';
import 'package:quote_gen_clean_arc/features/random_quote/domain/use_cases/get_random_quote_use_case.dart';
import 'package:quote_gen_clean_arc/features/random_quote/presentation/cubit/random_quote_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import "package:http/http.dart" as http;

final serviceLocator = GetIt.instance;

void init() async {
  //! Features
  // BLOCS
  // كده كل مااستعمله فانا بكون من انستنس
  serviceLocator.registerFactory<RandomQuoteCubit>(() {
    return RandomQuoteCubit(getRandomQuoteUseCase: serviceLocator());
  });
  // Use Cases
  serviceLocator.registerLazySingleton<GetRandomQuoteUseCase>(() {
    return GetRandomQuoteUseCase(quoteRepository: serviceLocator());
  });
  // Repos
  serviceLocator.registerLazySingleton<QuoteRepository>(() {
    return QuoteRepositoryImpl(
        networkInfo: serviceLocator(),
        randomQuoteLocalDataSource: serviceLocator(),
        randomQuoteRemoteDataSource: serviceLocator());
  });
  // Data Sources
  serviceLocator.registerLazySingleton<RandomQuoteLocalDataSource>(() {
    return RandomQuoteLocalDataSourceImpl(
      sharedPreferences: serviceLocator(),
    );
  });
  serviceLocator.registerLazySingleton<RandomQuoteRemoteDataSource>(() {
    return RandomQuoteRemoteDataSourceImpl(
      client: serviceLocator(),
    );
  });
  // !Core
  serviceLocator.registerLazySingleton<NetworkInfo>(() {
    return NetworkInfoImpl(
      connectionChecker: serviceLocator(),
    );
  });
  // External
  final shared = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton<SharedPreferences>(() {
    return shared;
  });
  serviceLocator.registerLazySingleton(() {
    return http.Client;
  });
  serviceLocator.registerLazySingleton(() {
    return InternetConnectionChecker();
  });
}

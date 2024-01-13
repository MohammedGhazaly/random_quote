import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
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

Future<void> init() async {
  final shared = await SharedPreferences.getInstance();

  //! Features
  // BLOCS
  // كده كل مااستعمله فانا بكون من انستنس
  serviceLocator.registerFactory<RandomQuoteCubit>(() {
    return RandomQuoteCubit(
        getRandomQuoteUseCase: serviceLocator<GetRandomQuoteUseCase>());
  });
  // Use Cases
  serviceLocator.registerLazySingleton<GetRandomQuoteUseCase>(() {
    return GetRandomQuoteUseCase(
        quoteRepository: serviceLocator<QuoteRepository>());
  });
  // Repos
  serviceLocator.registerLazySingleton<QuoteRepository>(() {
    return QuoteRepositoryImpl(
        networkInfo: serviceLocator<NetworkInfo>(),
        randomQuoteLocalDataSource:
            serviceLocator<RandomQuoteLocalDataSource>(),
        randomQuoteRemoteDataSource:
            serviceLocator<RandomQuoteRemoteDataSource>());
  });
  // Data Sources
  serviceLocator.registerLazySingleton<RandomQuoteLocalDataSource>(() {
    return RandomQuoteLocalDataSourceImpl(
      sharedPreferences: serviceLocator<SharedPreferences>(),
    );
  });
  serviceLocator.registerLazySingleton<RandomQuoteRemoteDataSource>(() {
    return RandomQuoteRemoteDataSourceImpl(
      client: serviceLocator<http.Client>(),
    );
  });
  // !Core
  serviceLocator.registerLazySingleton<NetworkInfo>(() {
    return NetworkInfoImpl(
      connectionChecker: serviceLocator<InternetConnectionChecker>(),
    );
  });
  // External
  serviceLocator.registerLazySingleton<SharedPreferences>(() {
    return shared;
  });
  serviceLocator.registerLazySingleton<http.Client>(() {
    return http.Client();
  });
  serviceLocator.registerLazySingleton<InternetConnectionChecker>(() {
    return InternetConnectionChecker();
  });
}

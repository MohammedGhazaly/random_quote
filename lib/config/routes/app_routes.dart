import 'package:flutter/material.dart';
import 'package:quote_gen_clean_arc/features/random_quote/presentation/screens/quote_screen.dart';
import 'package:quote_gen_clean_arc/features/splash/presentation/screens/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = "/";
  static const String homeScreen = "/home-screen";
}

class AppRouter {
  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (context) => const QuoteScreen());
      default:
        return undefiendRoute();
    }
  }

  static Route<dynamic> undefiendRoute() {
    return MaterialPageRoute(builder: (context) {
      return const Scaffold(
        body: Center(
          child: Text("Undefiend Route."),
        ),
      );
    });
  }
}

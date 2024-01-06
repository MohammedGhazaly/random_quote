import 'package:flutter/material.dart';
import 'package:quote_gen_clean_arc/core/utils/app_helpers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            AppHelpers.showToast(
              msg: "Error happened",
            );
          },
          child: Text("Show dialog"),
        ),
      ),
    );
  }
}

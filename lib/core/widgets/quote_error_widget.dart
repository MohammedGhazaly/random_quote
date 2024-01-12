import 'package:flutter/material.dart';
import 'package:quote_gen_clean_arc/core/utils/app_colors.dart';
import 'package:quote_gen_clean_arc/core/utils/app_styles.dart';

class QuoteErrorWidget extends StatelessWidget {
  const QuoteErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(
          Icons.warning_amber_rounded,
          size: 164,
          color: AppColors.primaryColor,
        ),
        //
        Text(
          "Something went wrong",
          style: AppTextStyles.styleSemiBold24,
          textAlign: TextAlign.center,
        ),
        Text(
          "Please try again.",
          style: AppTextStyles.styleMedium20.copyWith(
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  "Reload Screen",
                  style: AppTextStyles.styleMedium20,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

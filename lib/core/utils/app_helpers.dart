import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quote_gen_clean_arc/core/utils/app_colors.dart';
import 'package:quote_gen_clean_arc/core/utils/app_styles.dart';

class AppHelpers {
  static void showErrorDialog(
      {required BuildContext context, required String msg}) {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(
            msg,
            style: AppTextStyles.styleMedium14,
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Ok")),
          ],
        );
      },
    );
  }

  static void showToast({
    required BuildContext context,
    required String msg,
    Color? color,
    ToastGravity? gravity,
  }) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      backgroundColor: color ?? AppColors.primaryColor,
      gravity: gravity ?? ToastGravity.BOTTOM,
    );
  }
}

import 'package:flutter/material.dart';

extension AppMediaQuery on BuildContext {
  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;
  double get topPadding => MediaQuery.of(this).viewPadding.top;
  double get bottomPadding => MediaQuery.of(this).viewPadding.bottom;
  double get leftPadding => MediaQuery.of(this).viewPadding.left;
  double get rightPadding => MediaQuery.of(this).viewPadding.right;
}

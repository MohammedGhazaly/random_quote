import 'dart:ui';
import 'package:flutter/material.dart';

class HexColorConverter extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColorConverter(final String hexColor) : super(_getColorFromHex(hexColor));
  // "#451BAB"     : Input
  // 0xFF451BAB :  Out put
}

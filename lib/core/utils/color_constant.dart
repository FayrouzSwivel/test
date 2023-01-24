import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#666a74');

  static Color yellow400 = fromHex('#e9f354');

  static Color black900 = fromHex('#000201');

  static Color lightGreenA20066 = fromHex('#66c1f865');

  static Color gray900 = fromHex('#272020');

  static Color lightGreenA200 = fromHex('#b9f868');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray300 = fromHex('#e2e2e2');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

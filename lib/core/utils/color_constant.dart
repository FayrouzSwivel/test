import 'dart:ui';
import 'package:flutter/material.dart';

String _appTheme = "";

class ThemeHelper {
  Map<String, PrimaryTheme> _supportedThemes = {
    "primary": PrimaryTheme(),
    "secondary": SecondaryTheme(),
  };

  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
    Get.forceAppUpdate();
  }

  PrimaryTheme _getDefaultTheme() {
    //return default strings if locale is not set
    if (_appTheme.isEmpty) {
      return PrimaryTheme();
    }

    //throw exception to notify given local is not found or not generated by the generator
    if (!_supportedThemes.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this locale in JSON file Try running flutter pub run build_runner");
    }

    //return locale from map
    return _supportedThemes[_appTheme] ?? PrimaryTheme();
  }

  PrimaryTheme theme() => _getDefaultTheme();
}

class PrimaryTheme {
  Color get gray600 => fromHex("#666a74");
  Color get yellow400 => fromHex("#e9f354");
  Color get myColof => fromHex("#ffff0808");
  Color get black900 => fromHex("#000201");
  Color get lightGreenA20066 => fromHex("#66c1f865");
  Color get gray900 => fromHex("#272020");
  Color get lightGreenA200 => fromHex("#b9f868");
  Color get whiteA700 => fromHex("#ffffff");
  Color get gray300 => fromHex("#e2e2e2");
}

class SecondaryTheme extends PrimaryTheme {
  Color get gray600 => fromHex("#666a74");
  Color get yellow400 => fromHex("#e9f354");
  Color get myColof => fromHex("#ffde18f7");
  Color get black900 => fromHex("#000201");
  Color get lightGreenA20066 => fromHex("#66c1f865");
  Color get gray900 => fromHex("#272020");
  Color get lightGreenA200 => fromHex("#b9f868");
  Color get whiteA700 => fromHex("#ffffff");
  Color get gray300 => fromHex("#e2e2e2");
}

PrimaryTheme get appTheme => ThemeHelper().theme();
Color fromHex(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

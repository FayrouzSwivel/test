import 'package:flutter/material.dart';
import 'package:employer_app/core/app_export.dart';

class AppStyle {
  static TextStyle txtPoppinsSemiBold20 = TextStyle(
    color: appTheme.myColof,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtPoppinsRegular15 = TextStyle(
    color: appTheme.gray900,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtPoppinsMedium15 = TextStyle(
    color: appTheme.gray900,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );
}

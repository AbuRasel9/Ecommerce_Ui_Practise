import 'package:ecommerce_app/utils/theme/elevated_button_theme.dart';
import 'package:ecommerce_app/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'input_decoration_theme.dart';

class AppBaseTheme {
  AppBaseTheme._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.elevatedButtonTheme,
    inputDecorationTheme:AppDecorationFeild.lightInputDecorationTheme
  );
}

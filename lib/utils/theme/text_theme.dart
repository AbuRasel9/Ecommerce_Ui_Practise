import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();

  static final lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.w600, color: const Color.fromRGBO(123, 129, 232, 1.0)),
    headlineMedium: TextStyle().copyWith(fontSize: 25, fontWeight: FontWeight.w600, color: const Color.fromRGBO(123, 129, 232, 1.0)),

    titleSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: const Color.fromRGBO(143, 148, 251, 1)),
    labelSmall: TextStyle().copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),

    bodySmall: const TextStyle().copyWith(fontSize: 13, fontWeight: FontWeight.w600, color: const Color.fromRGBO(123, 129, 232, 1.0)),

  );
}

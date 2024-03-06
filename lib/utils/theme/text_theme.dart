import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();

  static final lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.w600, color: const Color.fromRGBO(123, 129, 232, 1.0)),
    headlineMedium: TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.w600, color: const Color.fromRGBO(123, 129, 232, 1.0)),
    titleMedium: const TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.w500, color:  Colors.black),

    titleSmall: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w600, color: const Color.fromRGBO(143, 148, 251, 1)),
    labelSmall: TextStyle().copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),

    bodyMedium: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
    bodySmall: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w600, color: const Color.fromRGBO(123, 129, 232, 1.0)),

  );
}

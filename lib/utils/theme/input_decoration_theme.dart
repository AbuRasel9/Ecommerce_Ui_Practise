import 'package:flutter/material.dart';

class AppDecorationFeild {
  AppDecorationFeild._();

  static final lightInputDecorationTheme = InputDecorationTheme(
    hintStyle: const TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: const BorderSide(
        color: Color.fromRGBO(143, 148, 251, 1),
      ),
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: const BorderSide(color: Color.fromRGBO(143, 148, 251, 1))),
  );
}

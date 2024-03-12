import 'package:flutter/material.dart';

class AppDecorationFeild {
  AppDecorationFeild._();

  static final lightInputDecorationTheme = InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 5,vertical: 2),
    hintStyle: const TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),
    focusedBorder: OutlineInputBorder(

      borderRadius: BorderRadius.circular(20.0),
      borderSide: const BorderSide(
        color: Color.fromRGBO(143, 148, 251, 1),
      ),
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(color: Color.fromRGBO(143, 148, 251, 1))),
  );
}

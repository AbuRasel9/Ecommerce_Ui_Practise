import 'package:ecommerce_app/core/splash_Screen/splash_screen.dart';
import 'package:ecommerce_app/utils/theme/base_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppBaseTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}


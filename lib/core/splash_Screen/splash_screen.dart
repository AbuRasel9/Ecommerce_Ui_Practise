import 'package:ecommerce_app/core/auth/login_screen/login_screen.dart';
import 'package:ecommerce_app/utils/constant/utils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
            (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 350,),
        Center(
          child: Image.asset(
            "assets/images/app_logo.png",
            alignment: Alignment.center,
            width: 120,
            fit: BoxFit.scaleDown,
          ),
        ),
        const Spacer(),
        CircularProgressIndicator(color: Utils.primaryColor),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "Version 1.0.0",
          style: TextStyle(
              color: Color.fromRGBO(166, 166, 166, 100), letterSpacing: .6),
        ),
        const SizedBox(
          height: 32,
        )
      ],
    ));
  }
}

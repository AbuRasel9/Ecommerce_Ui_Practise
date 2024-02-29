import 'package:ecommerce_app/core/auth/forgote_password/pin_verification_screen/pin_verification_screen.dart';
import 'package:ecommerce_app/core/auth/login_screen/login_screen.dart';
import 'package:ecommerce_app/core/auth/widget/app_elevated_button.dart';
import 'package:ecommerce_app/core/auth/widget/backgoround_image.dart';
import 'package:ecommerce_app/core/auth/widget/have_account_or_not_widget.dart';
import 'package:ecommerce_app/core/auth/widget/input_form_feild.dart';
import 'package:ecommerce_app/utils/constant/utils.dart';
import 'package:flutter/material.dart';

class ForgatePasswordScreen extends StatefulWidget {
  const ForgatePasswordScreen({super.key});

  @override
  State<ForgatePasswordScreen> createState() => _ForgatePasswordScreenState();
}

class _ForgatePasswordScreenState extends State<ForgatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BackGroundImageLoginScreen(text: ""),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your Email Address", style: textTheme.headlineLarge),
                  const SizedBox(height: 10),
                  Text(
                      "A 6 digit verification pin will send to your email address",
                      style: textTheme.titleSmall),
                  const SizedBox(height: 20),
                  const InputFormFeild(text: 'Email'),
                  const SizedBox(height: 20),
                  AppElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PinVerificationScreen()));
                  }, buttonText: "Continue"),
                  const SizedBox(height: 20),
                  HaveAccountOrNotWidget(
                      text: "Have account?",
                      buttonText: "Sign in",
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                            (route) => false);
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

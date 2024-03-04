import 'package:ecommerce_app/core/auth/login_screen/login_screen.dart';
import 'package:ecommerce_app/core/auth/widget/backgoround_image.dart';
import 'package:ecommerce_app/utils/common_widget/app_elevated_button.dart';
import 'package:ecommerce_app/core/auth/widget/have_account_or_not_widget.dart';
import 'package:ecommerce_app/core/auth/widget/input_form_feild.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BackGroundImageLoginScreen(
              text: "Join With Us",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Column(
                children: [
                  const InputFormFeild(text: "Email"),
                  const SizedBox(
                    height: 13,
                  ),
                  const InputFormFeild(text: "First Name"),
                  const SizedBox(
                    height: 13,
                  ),
                  const InputFormFeild(text: "Last Name"),
                  const SizedBox(
                    height: 13,
                  ),
                  const InputFormFeild(text: "Mobile"),
                  const SizedBox(
                    height: 13,
                  ),
                  const InputFormFeild(text: "Password"),
                  const SizedBox(
                    height: 25,
                  ),
                  AppElevatedButton(
                    buttonText: "Continue",
                    onPressed: () {},
                  ),
                  HaveAccountOrNotWidget(
                      text: "Have Account",
                      buttonText: "Sign In",
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                            (route) => false);
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

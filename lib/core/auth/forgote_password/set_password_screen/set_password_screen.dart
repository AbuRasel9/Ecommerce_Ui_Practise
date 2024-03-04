import 'package:ecommerce_app/utils/common_widget/app_elevated_button.dart';
import 'package:ecommerce_app/core/auth/widget/backgoround_image.dart';
import 'package:ecommerce_app/core/auth/widget/input_form_feild.dart';
import 'package:flutter/material.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          const BackGroundImageLoginScreen(text: ""),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Set Password",
                  style: textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Minimum length password 8 character with Latter and number combination ",
                  style: textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 20,
                ),
                const InputFormFeild(text: "Password"),
                const SizedBox(
                  height: 20,
                ),
                const InputFormFeild(text: "Confirm Password"),
                const SizedBox(
                  height: 30,
                ),
                AppElevatedButton(
                  buttonText: "Confirm",
                  onPressed: () {},

                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

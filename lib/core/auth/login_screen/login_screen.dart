import 'package:ecommerce_app/core/auth/forgote_password/forgate_password_screen/forgote_password_scree.dart';
import 'package:ecommerce_app/core/auth/registration_screen/registration_screen.dart';
import 'package:ecommerce_app/core/auth/widget/backgoround_image.dart';
import 'package:ecommerce_app/core/auth/widget/app_elevated_button.dart';
import 'package:ecommerce_app/core/auth/widget/have_account_or_not_widget.dart';
import 'package:ecommerce_app/core/auth/widget/input_form_feild.dart';
import 'package:ecommerce_app/core/home_view/main_bottom_nav_bar/main_bottom_nav_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ));

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const BackGroundImageLoginScreen(
                text: 'Get Started With',
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    FadeInUp(
                        duration: const Duration(milliseconds: 1800),
                        child: const Column(
                          children: [
                            InputFormFeild(
                              text: "Email or Phone number",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InputFormFeild(
                              text: "Password",
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1900),
                      child: AppElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MainBottomNavBar()));
                        },
                        buttonText: "Login",
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    FadeInUp(
                      duration: const Duration(milliseconds: 2000),
                      child: TextButton(
                        onPressed: () {},
                        child:  TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgatePasswordScreen()));
                          },
                          child:  const Text("Forgot Password?",
                          style: TextStyle(
                            fontSize: 17,
                            color: Color.fromRGBO(143, 148, 251, 1),
                          ),),

                        ),
                      ),
                    ),
                    FadeInUp(
                      duration: const Duration(milliseconds: 2000),
                      child: HaveAccountOrNotWidget(
                        text: "Don't Have Account?",
                        buttonText: "Sign Up",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegistrationScreen()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

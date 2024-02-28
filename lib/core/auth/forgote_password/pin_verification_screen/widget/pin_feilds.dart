import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinFeild extends StatelessWidget {
  const PinFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(

      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        activeFillColor: Color.fromRGBO(143, 148, 251, 1),
        inactiveFillColor:  Color.fromRGBO(143, 148, 251, 1),
        selectedFillColor:  Color.fromRGBO(143, 148, 251, 1),

        activeColor: Colors.white,
        inactiveColor: Colors.white,
        selectedColor: Colors.white,


        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 45,

      ),
      animationDuration: Duration(milliseconds: 300),
      enableActiveFill: true,
      onCompleted: (v) {
      },


       appContext: context,
    );
  }
}

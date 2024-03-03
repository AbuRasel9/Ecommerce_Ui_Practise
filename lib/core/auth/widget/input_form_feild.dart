import 'package:flutter/material.dart';

class InputFormFeild extends StatelessWidget {
  final String text;

  const InputFormFeild({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(

          hintText: text,
      ),
    );
  }
}

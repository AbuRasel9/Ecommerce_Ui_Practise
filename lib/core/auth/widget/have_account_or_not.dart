import 'package:flutter/material.dart';

class HaveAccountOrNotWidget extends StatelessWidget {
  const HaveAccountOrNotWidget({
    super.key,
    required this.text,
    required this.buttonText, required this.onPressed,
  });
  final VoidCallback onPressed;

  final String text;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 17,
            color: Color.fromRGBO(143, 148, 251, 1),
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Color.fromRGBO(123, 129, 232, 1.0),
            ),
          ),
        ),
      ],
    );
  }
}

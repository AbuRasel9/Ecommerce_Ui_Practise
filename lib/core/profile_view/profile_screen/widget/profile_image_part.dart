import 'package:flutter/material.dart';

class ProfileButtonItem extends StatelessWidget {
  const ProfileButtonItem({
    super.key,
    required this.buttonIcon,
    required this.text,
    required this.iconColor,
    required this.onPressed,
  });

  final Icon buttonIcon;
  final String text;
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          color: const Color(0xfff2f3f5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: buttonIcon,
            color: iconColor,
          ),
        ),
        Text(
          text,
        )
      ],
    );
  }
}

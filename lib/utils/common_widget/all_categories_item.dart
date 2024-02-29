import 'package:flutter/material.dart';

class AllCategoriesItem extends StatelessWidget {

  const AllCategoriesItem({
    super.key,
    required this.imgPath, required this.text, required this.onPressed,
  });
  final VoidCallback onPressed;
  final String text;

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          InkWell(
            onTap: onPressed,
            child: Container(
              height: 70,
              margin: const EdgeInsets.symmetric( vertical: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(231, 247, 247, 1),
              ),
              child: Image.asset(imgPath, fit: BoxFit.cover),

            ),
          ),

          Text(text,style: Theme.of(context).textTheme.titleSmall,)
        ],
      ),
    );
  }
}

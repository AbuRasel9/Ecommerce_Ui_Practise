import 'package:flutter/material.dart';

class HomeProductItem extends StatelessWidget {
  const HomeProductItem({
    super.key,
    required this.imgPath,
    required this.productName,
    required this.price,
    required this.rating,
    required this.iconButtonImage,
    required this.onPressed,
  });

  final String imgPath;
  final String productName;
  final String price;
  final String rating;
  final String iconButtonImage;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: InkWell(
            onTap: onPressed,
            child: Container(
              width: 180,

              margin: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                right: 10,
              ),
              // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(231, 247, 247, 1),
              ),
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          productName,
          style: textTheme.bodySmall,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("\$$price"),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.star,
                color: Color.fromRGBO(249, 216, 88, 1),
              ),
              label: Text(rating),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/home/heart.png",
                height: 20,
                width: 20,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ],
    );
  }
}

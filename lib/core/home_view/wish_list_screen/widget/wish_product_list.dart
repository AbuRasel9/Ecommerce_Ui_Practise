import 'package:flutter/material.dart';

class WishProductList extends StatelessWidget {
  const WishProductList({
    super.key,
    required this.imgPath,
    required this.productName,
    required this.price,
    required this.rating,
    required this.iconButtonImage,
  });

  final String imgPath;
  final String productName;
  final String price;
  final String rating;
  final String iconButtonImage;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,

            margin: const EdgeInsets.only(top: 10, bottom: 10, right: 10,),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(231, 247, 247, 1),
            ),
            child: Image.asset(
              imgPath,

              height: 125,
              width: 145,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          productName,
          style: textTheme.bodySmall?.copyWith(fontSize: 17),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text("\$${price}"),
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
              icon: const Icon(Icons.delete)
            )

          ],
        ),
      ],
    );
  }
}

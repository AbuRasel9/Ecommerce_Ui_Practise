import 'package:ecommerce_app/utils/constant/utils.dart';
import 'package:flutter/material.dart';

class ProductDetailsSliderItem extends StatelessWidget {
  const ProductDetailsSliderItem({
    super.key,
    required this.imgLink,

  });

  final String imgLink;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 10),

      decoration: BoxDecoration(
        color: Utils.primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imgLink,
            height: 190,
            width: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

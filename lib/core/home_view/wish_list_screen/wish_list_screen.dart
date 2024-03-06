import 'package:ecommerce_app/core/home_view/wish_list_screen/widget/wish_product_list.dart';
import 'package:ecommerce_app/models/product_models.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDF0F3),      appBar: AppBar(
        title: const Text("wish list"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 10),
        child: ListView.builder(
          itemCount: 10,

          itemBuilder: (context, index) {
            return  WishProductItem(
              productItem: ProductDetail(
                  id: index,
                  productName: "New Year Special Shoe 30",
                  productImage: "assets/images/product.png",
                  productRatingStar: 4.8,
                  productPrice: 5000),
            );
            ;
          },
        ),
      ),
    );
  }
}

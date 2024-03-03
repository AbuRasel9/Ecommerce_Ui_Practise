import 'package:ecommerce_app/core/home_view/wish_list_screen/widget/wish_product_list.dart';
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
      appBar: AppBar(
        title: const Text("wish list"),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 10),
        child: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,

              childAspectRatio: .75


          ),
          itemBuilder: (context, index) {
            return const WishProductList(
              imgPath: "assets/images/product.png",
              productName: "New Year Special Shoe 30",
              price: "1500",
              rating: "4.5",
              iconButtonImage: 'assets/images/home/heart.png',
            );
            ;
          },
        ),
      ),
    );
  }
}

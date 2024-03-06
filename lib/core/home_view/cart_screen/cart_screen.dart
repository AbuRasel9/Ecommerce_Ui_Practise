import 'package:ecommerce_app/core/home_view/cart_screen/widget/cart_product_item.dart';
import 'package:ecommerce_app/models/product_models.dart';
import 'package:ecommerce_app/utils/common_widget/app_elevated_button.dart';
import 'package:ecommerce_app/utils/constant/utils.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List cartProductList = [
    {
      "ID": 1,
      "ProductName": "New Year Special Shoe 30",
      "ProductImage": "assets/images/product.png",
      "ProductRatingStar": 4.5,
      "ProductPrice": 1500
    },
    {
      "ID": 2,
      "ProductName": "New Year Special Shoe 30",
      "ProductImage": "assets/images/product.png",
      "ProductRatingStar": 4.5,
      "ProductPrice": 1500
    },
    {
      "ID": 3,
      "ProductName": "New Year Special Shoe 30",
      "ProductImage": "assets/images/product.png",
      "ProductRatingStar": 4.5,
      "ProductPrice": 1500
    },
    {
      "ID": 4,
      "ProductName": "New Year Special Shoe 30",
      "ProductImage": "assets/images/product.png",
      "ProductRatingStar": 4.5,
      "ProductPrice": 1500
    },
    {
      "ID": 5,
      "ProductName": "New Year Special Shoe 30",
      "ProductImage": "assets/images/product.png",
      "ProductRatingStar": 4.5,
      "ProductPrice": 1500
    },
    {
      "ID": 6,
      "ProductName": "New Year Special Shoe 30",
      "ProductImage": "assets/images/product.png",
      "ProductRatingStar": 4.5,
      "ProductPrice": 1500
    },
    {
      "ID": 7,
      "ProductName": "New Year Special Shoe 30",
      "ProductImage": "assets/images/product.png",
      "ProductRatingStar": 4.5,
      "ProductPrice": 1500
    },
    {
      "ID": 8,
      "ProductName": "New Year Special Shoe 30",
      "ProductImage": "assets/images/product.png",
      "ProductRatingStar": 4.5,
      "ProductPrice": 1500
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFDF0F3),
        appBar: AppBar(
          title: const Text(
            "cart",
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: cartProductList.length,
                  itemBuilder: (context, index) {
                    return CartProductItem(
                      productDetails: ProductDetail(
                          id: cartProductList[index]["ID"],
                          productName: cartProductList[index]["ProductName"],
                          productImage: cartProductList[index]["ProductImage"],
                          productRatingStar: cartProductList[index]
                              ["ProductRatingStar"],
                          productPrice: cartProductList[index]["ProductPrice"]),
                    );
                  }),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Utils.primaryColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text("\$12000",
                          style: Theme.of(context).textTheme.headlineMedium)
                    ],
                  ),
                  SizedBox(
                      width: 150,
                      child: AppElevatedButton(
                          buttonText: "Checkout", onPressed: () {})),
                ],
              ),
            )
          ],
        ));
  }
}

import 'package:ecommerce_app/utils/common_widget/order_card_item.dart';
import 'package:flutter/material.dart';

class ReturnProduct extends StatefulWidget {
  const ReturnProduct({super.key});

  @override
  State<ReturnProduct> createState() => _ReturnProductState();
}

class _ReturnProductState extends State<ReturnProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const OrderCardItem(
              productName: "New Year Special Shoe",
              productSize: "30",
              productImagePath: "assets/images/product.png",
              productPrice: "300", status: "Return",);
          }),
    );
  }
}

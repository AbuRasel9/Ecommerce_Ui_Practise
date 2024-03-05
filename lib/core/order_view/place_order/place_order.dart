import 'package:ecommerce_app/utils/common_widget/order_card_item.dart';
import 'package:flutter/material.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
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
              productPrice: "300", status: "Place Order",);
          }),
    );
  }
}

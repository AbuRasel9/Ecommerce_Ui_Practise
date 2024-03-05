import 'package:ecommerce_app/utils/common_widget/order_card_item.dart';
import 'package:flutter/material.dart';

class CancellOrder extends StatefulWidget {
  const CancellOrder({super.key});

  @override
  State<CancellOrder> createState() => _CancellOrderState();
}

class _CancellOrderState extends State<CancellOrder> {
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
             productPrice: "300", status: "Cancelled",);
         }),
    );
  }
}

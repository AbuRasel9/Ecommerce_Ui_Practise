import 'package:ecommerce_app/utils/common_widget/order_card_item.dart';
import 'package:flutter/material.dart';

class DeliveredOrder extends StatefulWidget {
  const DeliveredOrder({super.key});

  @override
  State<DeliveredOrder> createState() => _DeliveredOrderState();
}

class _DeliveredOrderState extends State<DeliveredOrder> {
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
              productPrice: "300", status: "Delivered",);
          }),
    );
  }
}

import 'package:ecommerce_app/utils/common_widget/order_card_item.dart';
import 'package:flutter/material.dart';

class AllOrder extends StatefulWidget {
  const AllOrder({super.key});

  @override
  State<AllOrder> createState() => _AllOrderState();
}

class _AllOrderState extends State<AllOrder> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return  OrderCardItem(
              onpressed: (){},
                productName: "New Year Special Shoe",
                productSize: "30",
                productImagePath: "assets/images/product.png",
                productPrice: "300",
              status: (index.isEven)?"Delivered"
                  "":"Cancelled",);
          }),
    );
  }
}

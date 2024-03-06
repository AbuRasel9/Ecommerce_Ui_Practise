import 'package:ecommerce_app/core/order_view/order_details/order_details_screen/widget/shiping_billing_address.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Details"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            //============
            //shiping  address details
            //==========
            ShippingBillingAddress(status: "Shiping Address",
              name: "Abu Rasel",
              phone: "01770995451",
              address: "Dhaka,Dhaka-North,Natun-Bazar,Vatara Thana",
            ),

            //============
            //billing  address details
            //==========
            ShippingBillingAddress(status: "Shiping Address",
              name: "Md Rasel",
              phone: "01303228480",
              address: "Dhaka,Dhaka-North,Natun-Bazar,Vatara Thana",
            ),

          ],
        ),
      ),
    );
  }
}

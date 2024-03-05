import 'package:ecommerce_app/core/order_view/Delivered/delivered_order.dart';
import 'package:ecommerce_app/core/order_view/all_order/all_order.dart';
import 'package:ecommerce_app/core/order_view/cancelled/cancell_order.dart';
import 'package:ecommerce_app/core/order_view/confirmed_order/confirmed_order.dart';
import 'package:ecommerce_app/core/order_view/place_order/place_order.dart';
import 'package:ecommerce_app/core/order_view/return/return_product.dart';
import 'package:ecommerce_app/core/order_view/tabbar_view/tabbar_view.dart';
import 'package:flutter/material.dart';

class OrderListView extends StatefulWidget {
  const OrderListView({Key? key}) : super(key: key);

  @override
  State<OrderListView> createState() => _OrderListViewState();
}

class _OrderListViewState extends State<OrderListView> {
  //==============================
  // List name for the tab
  //==============================

  final List<String> _tabs = [
    'All',
    'Placed',
    'Confirm',
    'Delivered',
    'Return',
    'Cancel',
  ];

  @override
  Widget build(BuildContext context) {
    return OrderTabLayout(
      //==============================
      // custom tab widget
      //==============================

      tabs: _tabs,
      tabContents: const [
        AllOrder(),
        PlaceOrder(),
        ConfirmedOrder(),
        DeliveredOrder(),
        ReturnProduct(),
        CancellOrder(),
      ],
    );
  }

  Widget _buildTabContent(String tabName) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('$tabName Item $index'),
        );
      },
    );
  }
}

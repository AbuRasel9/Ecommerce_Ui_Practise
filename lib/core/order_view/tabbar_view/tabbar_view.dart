
import 'package:ecommerce_app/core/order_view/Delivered/delivered_order.dart';
import 'package:ecommerce_app/core/order_view/all_order/all_order.dart';
import 'package:ecommerce_app/core/order_view/cancelled/cancell_order.dart';
import 'package:ecommerce_app/core/order_view/confirmed_order/confirmed_order.dart';
import 'package:ecommerce_app/core/order_view/place_order/place_order.dart';
import 'package:ecommerce_app/core/order_view/return/return_product.dart';
import 'package:ecommerce_app/core/order_view/tabbar_view/tabbar_view.dart';
import 'package:ecommerce_app/core/order_view/tabbar_view/widget/tabbar_item.dart';
import 'package:flutter/material.dart';

class AppTabBarView extends StatefulWidget {
  const AppTabBarView({Key? key}) : super(key: key);

  @override
  State<AppTabBarView> createState() => _AppTabBarViewState();
}

class _AppTabBarViewState extends State<AppTabBarView> {
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
    return TabBarItem(
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

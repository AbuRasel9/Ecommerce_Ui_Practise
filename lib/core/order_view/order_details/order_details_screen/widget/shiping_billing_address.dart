import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShippingBillingAddress extends StatelessWidget {
  const ShippingBillingAddress({
    super.key,
    required this.status,
    required this.name,
    required this.phone,
    required this.address,
  });

  final String status;
  final String name;
  final String phone;
  final String address;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      children: [
        //============
        //shiping or billing address address details
        //==========
        Text(
          status,
          style: theme.bodyMedium?.copyWith(color: Colors.black38),
        ),
        Text(
          name,

          style: theme.bodyMedium?.copyWith(color: Colors.black),
        ),
        Text(
          phone,
          style: theme.bodyMedium?.copyWith(color: Colors.black),
        ),
        Text(
          address,
          style: theme.bodySmall?.copyWith(color: Colors.black38),
        ),
      ],
    );
  }
}

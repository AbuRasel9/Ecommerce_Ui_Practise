import 'package:flutter/material.dart';

class OrderCardItem extends StatelessWidget {
  const OrderCardItem(
      {super.key,
      required this.productName,
      required this.productSize,
      required this.productImagePath,
      required this.productPrice, required this.status});

  final String productName;
  final String productSize;
  final String productImagePath;
  final String productPrice;
  final String status;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        onTap: () {},
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productName,
              style: theme.headlineMedium?.copyWith(fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Size:$productSize",
              style: theme.headlineMedium?.copyWith(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "\$ ${productPrice}",
              style: theme.headlineMedium?.copyWith(fontSize: 16),
            )
          ],
        ),
        leading: Image.asset(
          productImagePath,
          height: 80,
          width: 80,
          fit: BoxFit.cover,
        ),
        trailing: Text(
          status,
          style: theme.headlineMedium?.copyWith(fontSize: 20),
        ),
      ),
    );
  }
}

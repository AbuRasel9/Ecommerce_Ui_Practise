import 'package:ecommerce_app/models/product_models.dart';
import 'package:flutter/material.dart';

class WishProductItem extends StatelessWidget {
  const WishProductItem({
    super.key,
    required this.productItem,
  });

  final ProductDetail productItem;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: ListTile(
          onTap: () {},
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productItem.productName,
                style: theme.headlineMedium?.copyWith(fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Size:30",
                style: theme.headlineMedium?.copyWith(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "\$ ${productItem.productPrice}",
                style: theme.headlineMedium?.copyWith(fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.shopping_cart))
                ],
              )
            ],
          ),
          leading: Image.asset(
            productItem.productImage,
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

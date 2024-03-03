import 'package:ecommerce_app/core/home_view/categories_screen/electronics_product_screen/widget/category_product_item.dart';
import 'package:ecommerce_app/models/product_models.dart';
import 'package:flutter/material.dart';

class ElectronicsProduct extends StatefulWidget {
  const ElectronicsProduct({super.key, required this.productList});

  final List<ProductDetail> productList;

  @override
  State<ElectronicsProduct> createState() => _ElectronicsProductState();
}

class _ElectronicsProductState extends State<ElectronicsProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Electronics",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: GridView.builder(
          itemCount: widget.productList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,

            childAspectRatio: .75


          ),
          itemBuilder: (context, index) {
            return CategoryProductItem(
              imgPath: widget.productList[index].productImage,
              productName: widget.productList[index].productName,
              price: widget.productList[index].productPrice.toString(),
              rating: widget.productList[index].productRatingStar.toString(),
              iconButtonImage: 'assets/images/home/heart.png',
            );
            ;
          },
        ),
      ),
    );
  }
}

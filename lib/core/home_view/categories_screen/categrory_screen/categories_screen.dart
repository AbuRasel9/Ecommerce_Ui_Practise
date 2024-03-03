import 'package:ecommerce_app/utils/common_widget/all_categories_item.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List allCategoryList = [
    {"name": "Electronics", "img": "assets/images/computer.png"},
    {"name": "Food", "img": "assets/images/fruits.png"},
    {"name": "Fashion", "img": "assets/images/fashion.png"},
    {"name": "Furniture", "img": "assets/images/furniture.png"},
    {"name": "Electronics", "img": "assets/images/computer.png"},
    {"name": "Food", "img": "assets/images/fruits.png"},
    {"name": "Fashion", "img": "assets/images/fashion.png"},
    {"name": "Furniture", "img": "assets/images/furniture.png"},
    {"name": "Electronics", "img": "assets/images/computer.png"},
    {"name": "Food", "img": "assets/images/fruits.png"},
    {"name": "Fashion", "img": "assets/images/fashion.png"},
    {"name": "Furniture", "img": "assets/images/furniture.png"},
    {"name": "Electronics", "img": "assets/images/computer.png"},
    {"name": "Food", "img": "assets/images/fruits.png"},
    {"name": "Fashion", "img": "assets/images/fashion.png"},
    {"name": "Furniture", "img": "assets/images/furniture.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("catogories"),
        ),
        body:
        Expanded(
          child: GridView.builder(

            itemCount: allCategoryList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, childAspectRatio: .8),
            itemBuilder: (context, index) {
              return AllCategoriesItem(
                onPressed: () { },
                imgPath: allCategoryList[index]["img"].toString(),
                text: allCategoryList[index]["name"].toString(),
              );
            },
          ),
        ));
  }
}

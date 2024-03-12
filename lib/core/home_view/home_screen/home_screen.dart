import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/core/home_view/categories_screen/categrory_screen/categories_screen.dart';
import 'package:ecommerce_app/core/home_view/categories_screen/electronics_product_screen/electronics_product.dart';
import 'package:ecommerce_app/core/home_view/home_screen/widget/home_screen_drawer.dart';
import 'package:ecommerce_app/core/home_view/product_details_screen/product_details_screen.dart';
import 'package:ecommerce_app/core/home_view/search_product_screen/search_product_screen.dart';
import 'package:ecommerce_app/core/home_view/home_screen/widget/home_product_item.dart';
import 'package:ecommerce_app/utils/common_widget/slider_indicator.dart';
import 'package:ecommerce_app/core/home_view/home_screen/widget/slider_item.dart';

import 'package:ecommerce_app/models/product_models.dart';
import 'package:ecommerce_app/services/network_requester.dart';
import 'package:ecommerce_app/utils/common_widget/all_categories_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;
  ProductDetails? _productDetails;

  final searchBarController = TextEditingController();

  //call data
  Future _getAllProductInformation() async {
    isLoading = true;
    final response = await NetworkRequester().getData();
    isLoading = false;
    _productDetails = ProductDetails.fromJson(response);
    setState(() {});
  }

  @override
  void initState() {
    _getAllProductInformation();
    super.initState();
  }

  //search function
  List<ProductDetail> searchList() {
    if (searchBarController.text.isEmpty) {
      return _productDetails?.productDetails ?? [];
    }
    return _productDetails!.productDetails
        .where((element) =>
            element.productName
                .toLowerCase()
                .startsWith(searchBarController.text.toLowerCase()) ||
            element.productPrice
                .toString()
                .startsWith(searchBarController.text.toLowerCase()))
        .toList();
  }

  final CarouselController _CarouselController = CarouselController();

  List allCategoryList = [
    {"name": "Electronics", "img": "assets/images/computer.png"},
    {"name": "Food", "img": "assets/images/fruits.png"},
    {"name": "Fashion", "img": "assets/images/fashion.png"},
    {"name": "Furniture", "img": "assets/images/furniture.png"}
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final list = searchList();

    //slider indicator index
    final ValueNotifier<int> _currentSelectedIndex = ValueNotifier(0);
    return Scaffold(
      drawer: const HomeScreenDrawer(),
      appBar: AppBar(
        title: SizedBox(
          height: 45,
          child: TextFormField(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchProduct()));
            },
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.black),
              hintText: "What Would You Like To Buy",
              hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),

              const SizedBox(
                height: 20,
              ),

              CarouselSlider(
                carouselController: _CarouselController,
                //viewportFraction used for image show full width in carousel
                options: CarouselOptions(
                    autoPlay: true,
                    reverse: false,
                    height: 180.0,
                    viewportFraction: 1,
                    onPageChanged: (index, _) {
                      _currentSelectedIndex.value = index;
                    }),

                items: [1, 2, 3, 4, 5].map((i) {
                  return const SliderItem(
                    imgLink: "assets/images/product.png",
                    offerText: 'Happy New Year\nSpecial Deal\nSave 30%',
                    buttonText: 'Buy Now',
                  );
                }).toList(),
              ),
              //slider indicator-------------------------->
              const SizedBox(
                height: 15,
              ),
              CarouselIndicator(currentSelectedIndex: _currentSelectedIndex),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "All Categories ",
                          style: textTheme.headlineMedium,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CategoriesScreen()));
                          },
                          child: Text(
                            "See More ",
                            style: textTheme.headlineMedium,
                          ),
                        ),
                      ],
                    ),

                    //All categories----------------------->
                    SizedBox(
                      height: 140,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return AllCategoriesItem(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ElectronicsProduct(
                                                productList: list)));
                              },
                              imgPath: allCategoryList[index]["img"].toString(),
                              text: allCategoryList[index]["name"].toString(),
                            );
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular ",
                          style: textTheme.headlineMedium,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See More ",
                            style: textTheme.headlineMedium,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 255,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            return HomeProductItem(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductDetailsScreen(
                                      productDetailList: ProductDetail(
                                        id: list[index].id,
                                        productName: list[index].productName,
                                        productImage: list[index].productImage,
                                        productRatingStar:
                                            list[index].productRatingStar,
                                        productPrice: list[index].productPrice,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              imgPath: list[index].productImage,
                              productName: list[index].productName,
                              price: list[index].productPrice.toString(),
                              rating: list[index].productRatingStar.toString(),
                              iconButtonImage: 'assets/images/home/heart.png',
                            );
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Special ",
                          style: textTheme.headlineMedium,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See More ",
                            style: textTheme.headlineMedium,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 255,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            return HomeProductItem(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductDetailsScreen(
                                      productDetailList: ProductDetail(
                                        id: list[index].id,
                                        productName: list[index].productName,
                                        productImage: list[index].productImage,
                                        productRatingStar:
                                            list[index].productRatingStar,
                                        productPrice: list[index].productPrice,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              imgPath: list[index].productImage,
                              productName: list[index].productName,
                              price: list[index].productPrice.toString(),
                              rating: list[index].productRatingStar.toString(),
                              iconButtonImage: 'assets/images/home/heart.png',
                            );
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New ",
                          style: textTheme.headlineMedium,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See More ",
                            style: textTheme.headlineMedium,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 255,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            return HomeProductItem(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductDetailsScreen(
                                      productDetailList: ProductDetail(
                                        id: list[index].id,
                                        productName: list[index].productName,
                                        productImage: list[index].productImage,
                                        productRatingStar:
                                            list[index].productRatingStar,
                                        productPrice: list[index].productPrice,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              imgPath: list[index].productImage,
                              productName: list[index].productName,
                              price: list[index].productPrice.toString(),
                              rating: list[index].productRatingStar.toString(),
                              iconButtonImage: 'assets/images/home/heart.png',
                            );
                          }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


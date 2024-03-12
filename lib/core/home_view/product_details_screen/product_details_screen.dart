import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/core/home_view/cart_screen/widget/inc_dec_form_feild.dart';
import 'package:ecommerce_app/core/home_view/product_details_screen/widget/poduct_slider_item.dart';
import 'package:ecommerce_app/models/product_models.dart';
import 'package:ecommerce_app/utils/common_widget/app_elevated_button.dart';
import 'package:ecommerce_app/utils/common_widget/slider_indicator.dart';
import 'package:ecommerce_app/utils/constant/utils.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.productDetailList});

  final ProductDetail productDetailList;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final CarouselController _CarouselController = CarouselController();
  final ValueNotifier<int> _currentSelectedIndex = ValueNotifier(0);

  //============
  //select image
  //==========
  bool img1 = false;
  bool img2 = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Product Details",
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /*
                  =========================
                  slider
                  =========================
                  */

                  Card(
                    child: img1
                        ? Image.network(
                            "https://d2s30hray1l0uq.cloudfront.net/frontend/shoe-photography-featured-image.jpg",
                            height: 300,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            widget.productDetailList.productImage,
                            height: 300,
                            width: double.infinity,
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        //============
                        //Image show difference difference or image selection part

                        //==========

                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                img1 = true;
                                img2 = false;
                                setState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(border: Border.all()),
                                padding: const EdgeInsets.all(5),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                // color: Utils.primaryColor,
                                child: Image.network(
                                  "https://d2s30hray1l0uq.cloudfront.net/frontend/shoe-photography-featured-image.jpg",
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                img1 = false;
                                img2 = true;
                                setState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(border: Border.all()),
                                padding: const EdgeInsets.all(
                                  5,
                                ),
                                // color: Utils.primaryColor,
                                child: Image.asset(
                                  "assets/images/product.png",
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),

                        //============
                        // increment decrement part
                        //==========
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                              widget.productDetailList.productName,
                              maxLines: 3,
                              style: const TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            )),
                            const SizedBox(width: 100, child: IncDecFormFeild())
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(widget.productDetailList.productRatingStar
                                .toString()),
                            const SizedBox(
                              width: 8,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Reviews",
                                  style: theme.bodySmall,
                                )),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Utils.primaryColor,
                              ),
                              child: const Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 16,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Color",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: (21),
                                backgroundColor: Colors.blue,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: (21),
                                backgroundColor: Colors.green,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: (21),
                                backgroundColor: Colors.red,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Size",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 10),                                decoration: BoxDecoration(
                                  color: Utils.primaryColor,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: const Text("40"),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 10),
                                decoration: BoxDecoration(
                                  color: Utils.primaryColor,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: const Text("41"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12,),
                        Text("Description", style: theme.titleSmall),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          """Reference site about Lorem Ipsum, giving information on its 
origins, as well as a random Lipsum generator Reference site 
about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator""",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              letterSpacing: .3),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          //add to cart button
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                color: Utils.primaryColor.withOpacity(0.20),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Price", style: theme.headlineMedium),
                    const SizedBox(
                      height: 2,
                    ),
                    Text("\$12000", style: theme.bodySmall),
                  ],
                ),
                SizedBox(
                  width: 130,
                  child: AppElevatedButton(
                    buttonText: 'Add To Cart',
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 110,
                  child: AppElevatedButton(
                    buttonText: 'Buy Now',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

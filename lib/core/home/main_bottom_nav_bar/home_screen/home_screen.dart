import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/core/home/main_bottom_nav_bar/home_screen/widget/slider_indicator.dart';
import 'package:ecommerce_app/core/home/main_bottom_nav_bar/home_screen/widget/slider_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _CarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> _currentSelectedIndex = ValueNotifier(0);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            // TextFormField(
            //   decoration: InputDecoration(
            //     prefixIcon: const Icon(
            //       Icons.search,
            //       color: Color.fromRGBO(143, 148, 251, 1),
            //     ),
            //     hintText: "Search",
            //     contentPadding:
            //         const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            //     focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(15),
            //         borderSide: const BorderSide(
            //           color: Color.fromRGBO(143, 148, 251, 1),
            //         )),
            //     enabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(15),
            //         borderSide: const BorderSide(
            //           color: Color.fromRGBO(143, 148, 251, 1),
            //         )),
            //   ),
            // ),
            const SizedBox(height: 20,),

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
                return const SliderItem( imgLink: "assets/images/product.png", offerText: 'Happy New Year\nSpecial Deal\nSave 30%', buttonText: 'Buy Now',);
              }).toList(),
            ),
            const SizedBox(
              height: 15,
            ),

            //selected carousel background color
            CarouselIndicator(currentSelectedIndex: _currentSelectedIndex),
          ],
        ),
      ),
    );
  }
}

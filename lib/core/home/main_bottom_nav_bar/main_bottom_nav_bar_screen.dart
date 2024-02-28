
import 'package:ecommerce_app/core/home/main_bottom_nav_bar/cart_screen/cart_screen.dart';
import 'package:ecommerce_app/core/home/main_bottom_nav_bar/categories_screen/categories_screen.dart';
import 'package:ecommerce_app/core/home/main_bottom_nav_bar/home_screen/home_screen.dart';
import 'package:ecommerce_app/core/home/main_bottom_nav_bar/wish_list_screen/wish_list_screen.dart';
import 'package:flutter/material.dart';


class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  var currentScreen = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const CartScreen(),
    const WishListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ReuseAbleAppBar(context),


      body: screens[currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          currentScreen = index;
          setState(() {});
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black45,
        selectedItemColor: const Color.fromRGBO(123, 129, 232, 1.0),
        currentIndex: currentScreen,
        items:  [
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/nav_bar/home.png"), label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/nav_bar/category.png"), label: "Categories"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/nav_bar/cart.png"), label: "Wish"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/nav_bar/wish.png"), label: "Cart"),
        ],
      ),
    );
  }
}

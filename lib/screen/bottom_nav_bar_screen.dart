import 'package:flutter/material.dart';
import 'package:grocries_app/screen/account_screen.dart';
import 'package:grocries_app/screen/cart_screen.dart';
import 'package:grocries_app/screen/explore_screen.dart';
import 'package:grocries_app/screen/favorite_screen.dart';
import 'package:grocries_app/screen/shop_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;
  List<Widget> screens=[
    ShopeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoriteScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:screens[currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff53B175),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.storefront), label: "shop"),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: "Account",
          ),
        ],
      ),
    );
  }
}

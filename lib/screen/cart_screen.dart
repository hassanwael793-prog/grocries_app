import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocries_app/constants/app_colors.dart';

import '../widegets/cart_widget/button.dart';
import '../widegets/cart_widget/cart_item.dart';

class CartScreen1 extends StatelessWidget {
  const CartScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: Text(
              "My Cart",
              style: TextStyle(fontSize: 20, color: AppColors.black),
            ),
          ),
          const Divider(thickness: 1, color: Color(0xffE2E2E2)),
          SizedBox(height: 11),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: CartItem(
                    imagePath: 'image/Bell Pepper Red.png',
                    title: 'Bell Pepper Red',
                    subtitle: '1kg, Price',
                    price: '4.99',
                  ),
                ),
                SizedBox(height: 11),
                const Divider(thickness: 1, color: Color(0xffE2E2E2)),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: CartItem(
                    imagePath: 'image/pngfuel 16.png',
                    title: 'Egg Chicken Red',
                    subtitle: '4pcs, Price',
                    price: '1.99',
                  ),
                ),
                SizedBox(height: 30),
                const Divider(thickness: 1, color: Color(0xffE2E2E2)),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: CartItem(
                    imagePath: 'image/banabas.png',
                    title: 'Organic Bananas',
                    subtitle: '12kg, Price',
                    price: '3.00',
                  ),
                ),
                SizedBox(height: 30),
                const Divider(thickness: 1, color: Color(0xffE2E2E2)),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: CartItem(
                    imagePath: 'image/pngfuel 3.png',
                    title: 'Ginger',
                    subtitle: '250gm, Price',
                    price: '2.99',
                  ),
                ),
              ],
            ),
          ),
          ButtonCart(),

        ],
      ),
    );
  }
}

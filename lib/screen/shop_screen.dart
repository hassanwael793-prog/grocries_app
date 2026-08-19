import 'package:flutter/material.dart';
import 'package:grocries_app/constants/app_colors.dart';
import 'package:grocries_app/widegets/home_screen_widgets/groeceries.dart';
import 'package:grocries_app/widegets/home_screen_widgets/location_bar.dart';
import 'package:grocries_app/widegets/home_screen_widgets/product_item.dart';
import 'package:grocries_app/widegets/home_screen_widgets/search_field.dart';
import 'package:grocries_app/widegets/home_screen_widgets/slider.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  ValueChanged<double>? get onChanged => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.27),
        child: ListView(
          children: [
            Center(child: Image.asset("image/carrot2.png", width: 30)),
            SizedBox(height: 7.6),
            LocationBar(),
            SizedBox(height: 20),
            SearchField(),
            SizedBox(height: 20),
            SliderShop(),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Exclusive Offer",
                    style: TextStyle(
                      fontWeight: FontWeight(600),
                      fontSize: 24,
                      color: AppColors.black,
                    ),
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 16, color: AppColors.primary),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 360,
              child: ListView.separated(
                itemCount: 4,
                itemBuilder: (context, index) => product[index],
                separatorBuilder: (context, index) => SizedBox(width: 10),
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
                  style: TextStyle(
                    fontWeight: FontWeight(600),
                    fontSize: 24,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 16, color: AppColors.primary),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 290,
              child: ListView.separated(
                itemCount: 2,
                itemBuilder: (context, index) => product2[index],
                separatorBuilder: (context, index) => SizedBox(width: 10),
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Groceries",
                  style: TextStyle(
                    fontWeight: FontWeight(600),
                    fontSize: 24,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 16, color: AppColors.primary),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.separated(
                itemCount: 2,
                itemBuilder: (context, index) => product3[index],
                separatorBuilder: (context, index) => SizedBox(width: 10),
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
            SizedBox(
              height: 360,
              child: ListView.separated(
                itemCount: 2,
                itemBuilder: (context, index) => product4[index],
                separatorBuilder: (context, index) => SizedBox(width: 10),
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

List<Widget> product = [
  ProductItem(
    image: "image/zamalek.png",
    text: "Zamalek",
    subText: "Priceless ❤️",
    price: 999999.9,
  ),
  ProductItem(
    image: "image/banabas.png",
    text: "Organic Bananas",
    subText: "7pcs, Priceg",
    price: 4.99,
  ),
  ProductItem(
    image: "image/apple.png",
    text: "Red Apple",
    subText: "1kg, Price",
    price: 4.99,
  ),
  ProductItem(
    image: "image/orange.webp",
    text: "Berries",
    subText: "1kg, Price",
    price: 5.99,
  ),
];

List<Widget> product2 = [
  ProductItem(
    image: "image/Bell Pepper Red.png",
    text: "Bell Pepper Red.",
    subText: "7pcs, Priceg",
    price: 4.99,
  ),
  ProductItem(
    image: "image/pngfuel 3.png",
    text: "pngfuel ",
    subText: "7pcs, Priceg",
    price: 4.99,
  ),
];
List<Widget> product3 = [
  Groeceries(image: "image/Pulses.png", text: "Pulses"),
  Groeceries(image: "image/rice.png", text: "rice "),
];
List<Widget> product4 = [
  ProductItem(
    image: "image/pngfuel 4.png",
    text: "Beef Bone.",
    subText: "1kg, Priceg",
    price: 4.99,
  ),
  ProductItem(
    image: "image/pngfuel 5.png",
    text: "Broiler Chicken ",
    subText: "1kg, Priceg",
    price: 4.99,
  ),
];

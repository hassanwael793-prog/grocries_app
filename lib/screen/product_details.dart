import 'package:flutter/material.dart';
import 'package:grocries_app/constants/app_colors.dart';
import 'package:grocries_app/widegets/product_widgets/ProductImageSection.dart';
import 'package:grocries_app/widegets/product_widgets/button.dart';
import 'package:grocries_app/widegets/product_widgets/nutritions.dart';
import 'package:grocries_app/widegets/product_widgets/quantity_and_price.dart';

import '../widegets/product_widgets/expansionTile.dart';
import '../widegets/product_widgets/review.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImageSection(),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Naturel Red Apple",
                            style: TextStyle(
                              fontSize: 24,
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Icon(Icons.favorite_outline),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Text(
                      "1kg, Price",
                      style: TextStyle(fontSize: 16, color: AppColors.grey),
                    ),
                    SizedBox(height: 30),
                    QuantityAndPrice(),
                    SizedBox(height: 20),
                    Expansiontile(),
                    SizedBox(height: 20),
                    Nutritions(),
                    SizedBox(height: 15),
                    Divider(color: AppColors.grey),
                    SizedBox(height: 15,),
                    Review(),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Button1(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

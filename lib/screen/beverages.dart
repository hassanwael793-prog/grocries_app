import 'package:flutter/material.dart';
import '../model/product_item..dart';
import '../widegets/beverages_widget/product_card.dart';


class BeveragesScreen extends StatelessWidget {
  BeveragesScreen({super.key});

  final List<ProductItem> beverages = [
    ProductItem(
      title: 'Diet Coke',
      description: '355ml, Price',
      price: 1.99,
      imagePath: 'image/pngfuel 11.png',
    ),
    ProductItem(
      title: 'Sprite Can',
      description: '325ml, Price',
      price: 1.50,
      imagePath: 'image/pngfuel 12.png',
    ),
    ProductItem(
      title: 'Apple & Grape Juice',
      description: '2L, Price',
      price: 15.99,
      imagePath: 'image/tree-top-juice-apple-grape-64oz 1.png',
    ),
    ProductItem(
      title: 'Orenge Juice',
      description: '2L, Price',
      price: 15.99,
      imagePath: 'image/tree-top-juice-apple-grape-64oz 1 (1).png',
    ),
    ProductItem(
      title: 'Coca Cola Can',
      description: '325ml, Price',
      price: 4.99,
      imagePath: 'image/pngfuel 13.png',
    ),
    ProductItem(
      title: 'Pepsi Can',
      description: '330ml, Price',
      price: 4.99,
      imagePath: 'image/pngfuel 14.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF181725)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Beverages',
          style: TextStyle(
            color: Color(0xFF181725),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.tune, color: Color(0xFF181725)),
            onPressed: () {

            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: GridView.builder(
          itemCount: beverages.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            return ProductCard(
              product: beverages[index],
              onTap: () {
              },
              onAddTap: () {

              },
            );
          },
        ),
      ),
    );
  }
}
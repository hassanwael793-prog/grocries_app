import 'package:flutter/material.dart';
import '../model/product_item..dart';
import '../widegets/favorite_widget/favorite_item_tile.dart';
import 'cart_screen.dart';


class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});

  final List<ProductItem> favoriteItems = [
    ProductItem(
      title: 'Sprite Can',
      description: '325ml, Price',
      price: 1.50,
      imagePath: 'image/pngfuel 12.png',
    ),
    ProductItem(
      title: 'Diet Coke',
      description: '355ml, Price',
      price: 1.99,
      imagePath: 'image/pngfuel 11.png',
    ),
    ProductItem(
      title: 'Apple & Grape Juice',
      description: '2L, Price',
      price: 15.50,
      imagePath: 'image/tree-top-juice-apple-grape-64oz 1.png',
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
        centerTitle: true,
        title: const Text(
          'Favorurite',
          style: TextStyle(
            color: Color(0xFF181725),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFE2E2E2),
          ),
        ),
      ),
      body: Column(
        children: [

          Expanded(
            child: ListView.separated(
              itemCount: favoriteItems.length,
              separatorBuilder: (context, index) => const Divider(
                height: 1,
                thickness: 1,
                indent: 24,
                endIndent: 24,
                color: Color(0xFFE2E2E2),
              ),
              itemBuilder: (context, index) {
                return FavoriteItemTile(
                  item: favoriteItems[index],
                  onTap: () {

                  },
                );
              },
            ),
          ),


          const Divider(height: 1, thickness: 1, color: Color(0xFFE2E2E2)),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: SizedBox(
              width: double.infinity,
              height: 67,
              child: ElevatedButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  CartScreen1(),
                    ),
                  );

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF53B175),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
                child: const Text(
                  'Add All To Cart',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
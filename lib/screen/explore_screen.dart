import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocries_app/screen/search_products_screen.dart';

import '../model/categoryItem.dart';
import '../widegets/explor_widget/category Card Widget.dart';
import 'beverages.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  final List<CategoryItem> categories = [
    CategoryItem(
      title: 'Fresh Fruits\n& Vegetable',
      imagePath: 'image/pngfuel 6.png',
      bgColor: const Color(0xFF53B175).withOpacity(0.1),
      borderColor: const Color(0xFF53B175).withOpacity(0.7),
    ),
    CategoryItem(
      title: 'Cooking Oil\n& Ghee',
      imagePath: 'image/Group 6835.png',
      bgColor: const Color(0xFFF8A44C).withOpacity(0.1),
      borderColor: const Color(0xFFF8A44C).withOpacity(0.7),
    ),
    CategoryItem(
      title: 'Meat & Fish',
      imagePath: 'image/pngfuel 9.png',
      bgColor: const Color(0xFFF7A593).withOpacity(0.25),
      borderColor: const Color(0xFFF7A593),
    ),
    CategoryItem(
      title: 'Bakery & Snacks',
      imagePath: 'image/pngfuel 15 (1).png',
      bgColor: const Color(0xFFD3B0E0).withOpacity(0.25),
      borderColor: const Color(0xFFD3B0E0),
    ),
    CategoryItem(
      title: 'Dairy & Eggs',
      imagePath: 'image/pngfuel.png',
      bgColor: const Color(0xFFFDE598).withOpacity(0.25),
      borderColor: const Color(0xFFFDE598),
    ),
    CategoryItem(
      title: 'Beverages',
      imagePath: 'image/pngfue 6 (2).png',
      bgColor: const Color(0xFFB7DFF5).withOpacity(0.25),
      borderColor: const Color(0xFFB7DFF5),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Find Products',
          style: TextStyle(
            color: Color(0xFF181725),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 10),

            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF2F3F2),
                borderRadius: BorderRadius.circular(15),
              ),
              child:  TextField(
                readOnly: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchProductsScreen()),
                  );
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Color(0xFF181725)),
                  hintText: 'Search Store',
                  hintStyle: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 14),
                ),
              )
            ),
            const SizedBox(height: 20),


            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.82,
                ),
                itemBuilder: (context, index) {
                  return CategoryCard(
                    item: categories[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (index) => BeveragesScreen(),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
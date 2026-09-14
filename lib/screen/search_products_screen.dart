import 'package:flutter/material.dart';
import '../model/product_item..dart';
import '../widegets/beverages_widget/product_card.dart';
import 'Filters Screen.dart';

class SearchProductsScreen extends StatefulWidget {
  const SearchProductsScreen({super.key});

  @override
  State<SearchProductsScreen> createState() => _SearchProductsScreenState();
}

class _SearchProductsScreenState extends State<SearchProductsScreen> {
  final TextEditingController _searchController = TextEditingController(
    text: 'Egg',
  );

  final List<ProductItem> eggProducts = [
    ProductItem(
      title: 'Egg Chicken Red',
      description: '4pcs, Price',
      price: 1.99,
      imagePath: 'image/egg1.png',
    ),
    ProductItem(
      title: 'Egg Chicken White',
      description: '180g, Price',
      price: 1.50,
      imagePath: 'image/pngfuel 18.png',
    ),
    ProductItem(
      title: 'Egg Pasta',
      description: '30gm, Price',
      price: 15.99,
      imagePath: 'image/hiclipart 2.png',
    ),
    ProductItem(
      title: 'Egg Noodles',
      description: '2L, Price',
      price: 15.99,
      imagePath: 'image/egg-noodle (1) 2.png',
    ),
    ProductItem(
      title: 'Mayonnais Eggless',
      description: '1kg, Price',
      price: 15.99,
      imagePath: 'image/American-Garden-Mayonnaise-Eggless-473ml 2.png',
    ),
    ProductItem(
      title: 'Egg Noodles',
      description: '330g, Price',
      price: 15.99,
      imagePath: 'image/rp_24790392_0053554627_l 2.png',
    ),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F3F2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: _searchController,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF181725),
                        ),
                        decoration: InputDecoration(
                          hintText: 'Search Store',
                          hintStyle: const TextStyle(
                            color: Color(0xFF7C7C7C),
                            fontSize: 14,
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xFF181725),
                            size: 24,
                          ),

                          suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.cancel,
                              color: Color(0xFF7C7C7C),
                              size: 20,
                            ),
                            onPressed: () {
                              _searchController.clear();
                              setState(() {});
                            },
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),

                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FiltersScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.tune,
                      color: Color(0xFF181725),
                      size: 26,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Expanded(
                child: GridView.builder(
                  itemCount: eggProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.72,
                  ),
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: eggProducts[index],
                      onTap: () {},
                      onAddTap: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

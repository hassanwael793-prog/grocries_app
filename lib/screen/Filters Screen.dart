import 'package:flutter/material.dart';

import '../widegets/Custom Checkbox Item.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {

  final Set<String> _selectedCategories = {'Eggs'};
  final Set<String> _selectedBrands = {'Cocola'};

  final List<String> _categories = [
    'Eggs',
    'Noodles & Pasta',
    'Chips & Crisps',
    'Fast Food',
  ];

  final List<String> _brands = [
    'Individual Collection',
    'Cocola',
    'Ifad',
    'Kazi Farmas',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xFF181725), size: 26),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Filters',
          style: TextStyle(
            color: Color(0xFF181725),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        decoration: const BoxDecoration(
          color: Color(0xFFF2F3F2),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF181725),
                      ),
                    ),
                    const SizedBox(height: 12),
                    ..._categories.map((category) {
                      final isSelected = _selectedCategories.contains(category);
                      return FilterCheckboxItem(
                        title: category,
                        isSelected: isSelected,
                        onChanged: (val) {
                          setState(() {
                            if (val == true) {
                              _selectedCategories.add(category);
                            } else {
                              _selectedCategories.remove(category);
                            }
                          });
                        },
                      );
                    }),

                    const SizedBox(height: 28),


                    const Text(
                      'Brand',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF181725),
                      ),
                    ),
                    const SizedBox(height: 12),
                    ..._brands.map((brand) {
                      final isSelected = _selectedBrands.contains(brand);
                      return FilterCheckboxItem(
                        title: brand,
                        isSelected: isSelected,
                        onChanged: (val) {
                          setState(() {
                            if (val == true) {
                              _selectedBrands.add(brand);
                            } else {
                              _selectedBrands.remove(brand);
                            }
                          });
                        },
                      );
                    }),
                  ],
                ),
              ),
            ),


            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {

                  Navigator.pop(context, {
                    'categories': _selectedCategories.toList(),
                    'brands': _selectedBrands.toList(),
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF53B175),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
                child: const Text(
                  'Apply Filter',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model/categoryItem.dart';
class CategoryCard extends StatelessWidget {
  final CategoryItem item;
  final VoidCallback? onTap;

  const CategoryCard({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: item.bgColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: item.borderColor, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                item.imagePath,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              item.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF181725),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
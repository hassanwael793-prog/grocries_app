import 'package:flutter/material.dart';
import '../../model/product_item..dart';

class ProductCard extends StatelessWidget {
  final ProductItem product;
  final VoidCallback? onTap;
  final VoidCallback? onAddTap;

  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
    this.onAddTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Ink(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: const Color(0xFFE2E2E2), width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(product.imagePath, fit: BoxFit.contain),
              ),
            ),
            const SizedBox(height: 10),

            Text(
              product.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF181725),
              ),
            ),
            const SizedBox(height: 4),

            Text(
              product.description,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF7C7C7C),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF181725),
                  ),
                ),
                GestureDetector(
                  onTap: onAddTap,
                  child: Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: const Color(0xFF53B175),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 24),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

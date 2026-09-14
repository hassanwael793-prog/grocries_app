import 'package:flutter/material.dart';
import '../../model/product_item..dart';

class FavoriteItemTile extends StatelessWidget {
  final ProductItem item;
  final VoidCallback? onTap;

  const FavoriteItemTile({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Row(
          children: [
            SizedBox(
              width: 55,
              height: 65,
              child: Image.asset(item.imagePath, fit: BoxFit.contain),
            ),
            const SizedBox(width: 20),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF181725),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    item.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF7C7C7C),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '\$${item.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF181725),
                  ),
                ),
                const SizedBox(width: 12),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Color(0xFF181725),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

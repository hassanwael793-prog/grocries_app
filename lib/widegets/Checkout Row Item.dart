import 'package:flutter/material.dart';

class CheckoutRowItem extends StatelessWidget {
  final String title;
  final Widget trailing;
  final VoidCallback? onTap;

  const CheckoutRowItem({
    super.key,
    required this.title,
    required this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF7C7C7C),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                trailing,
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
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
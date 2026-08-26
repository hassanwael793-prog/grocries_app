import 'package:flutter/material.dart';
import 'package:grocries_app/constants/app_colors.dart';

class QuantityAndPrice extends StatefulWidget {
  const QuantityAndPrice({super.key});

  @override
  State<QuantityAndPrice> createState() => _QuantityAndPriceState();
}

class _QuantityAndPriceState extends State<QuantityAndPrice> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if (quantity > 1) {
              setState(() {
                quantity--;
              });
            }
          },
          child: Icon(Icons.remove, color: AppColors.grey),
        ),
        const SizedBox(width: 21),
        Container(
          height: 45,
          width: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            border: Border.all(
              color: const Color(0xFFE2E2E2),
              width: 1,
            ),
          ),
          child: Text(
            "$quantity",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 21),
        GestureDetector(
          onTap: () {
            setState(() {
              quantity++;
            });
          },
          child: Icon(Icons.add, color: AppColors.primary),
        ),
        const Spacer(),
        const Text(
          "\$4.99",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF181725),
          ),
        ),
      ],
    );
  }
}
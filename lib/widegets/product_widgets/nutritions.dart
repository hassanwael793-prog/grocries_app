import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class Nutritions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Nutritions",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.box,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Text(
            "100gr",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF7C7C7C),
            ),
          ),
        ),
        const SizedBox(width: 15),
        const Icon(Icons.arrow_forward_ios, size: 18, color: Color(0xFF181725)),
      ],
    );
  }
}

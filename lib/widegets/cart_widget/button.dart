import 'package:flutter/material.dart';
import 'package:grocries_app/constants/app_colors.dart';
import '../../screen/Bottom Sheet.dart';

class ButtonCart extends StatelessWidget {
  final String price;
  final VoidCallback? onTap;

  const ButtonCart({
    super.key,
    this.price = r'$12.96',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(19),
      onTap: onTap ??
              () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (context) => const CheckoutBottomSheet(),
            );
          },
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: AppColors.primary,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: [
              const Spacer(),
              Text(
                "Go to Checkout",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4.0,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff489E67),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Text(
                  price,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
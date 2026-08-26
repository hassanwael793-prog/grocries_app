import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constants/app_colors.dart';

class ProductImageSection extends StatelessWidget {
  const ProductImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.product,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.1, left: 25, right: 25),
            child: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                  const Spacer(flex: 1),
                  const Icon(Icons.ios_share),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 42,
              right: 41,
              bottom: 59,
            ),
            child: Column(
              children: [
                Image.asset("image/bigapple.png", height: 180),
                const SizedBox(height: 39),
                AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: AppColors.primary,
                    dotColor: AppColors.grey,
                    dotHeight: 5,
                    dotWidth: 5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
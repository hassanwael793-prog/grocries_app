import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/app_colors.dart';
import '../../screen/shop_screen.dart';

class SliderShop extends StatefulWidget {
  const SliderShop({super.key});

  @override
  State<SliderShop> createState() => _SliderShopState();
}

class _SliderShopState extends State<SliderShop> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 119.0,
            autoPlay: true,
            viewportFraction: 1,
            autoPlayInterval: Duration(seconds: 3),
            onPageChanged: (i, r) {
              setState(() {
                activeIndex = i;
              });
            },
          ),
          items: image
              .map(
                (i) => Container(
                  width: double.infinity,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.asset(i).image,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: 10,
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: 3,

            effect: WormEffect(
              activeDotColor: AppColors.primary,
              dotColor: AppColors.grey,
              dotHeight: 12,
              dotWidth: 12,
            ),
          ),
        ),
      ],
    );
  }
}
List<String> image = [
  'image/banner.png',
  'image/banner2.jpg',
  'image/banner3.jpg',
];

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class ProductItem extends StatelessWidget{
    final String image;
    final String text;
    final String subText;
    final double price;

   ProductItem({super.key, required this.image, required this.text, required this.subText, required this.price});


  @override
  Widget build(BuildContext context) {

    return Container(
      width: 173,
      padding: EdgeInsets.only(top: 25, right: 15, left: 15, bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.card),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(image)),
          SizedBox(height: 33),
          Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          Text(subText, style: TextStyle(color: AppColors.grey)),
          SizedBox(height: 36.2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$$price",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.add, color: AppColors.white, size: 17),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

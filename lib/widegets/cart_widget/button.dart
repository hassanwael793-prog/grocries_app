import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocries_app/constants/app_colors.dart';

class ButtonCart extends StatelessWidget{


  const ButtonCart({super.key,});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: AppColors.primary,
      ),
      child: Center(child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text("Go to Checkout",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: const Color(0xff489E67), // درجة أخضر أغمق متناسقة مع الزرار
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: const Text(
                r'$12.96',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),),
    );

  }
}
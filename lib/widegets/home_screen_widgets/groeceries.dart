import 'package:flutter/cupertino.dart';

import '../../constants/app_colors.dart';

class Groeceries extends StatelessWidget {
  final String image;
  final String text;
  const Groeceries({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 105,
        width:248,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.card),
          color: AppColors.card2,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Image.asset(image),

            ),
            Spacer(flex: 1,),
            Text(text,style: TextStyle(
              color: AppColors.black,
              fontSize: 20,
            ),),
            Spacer(flex: 6,),
          ],
        ),

      ),

    );
  }
}

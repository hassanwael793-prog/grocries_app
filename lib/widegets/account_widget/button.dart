import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocries_app/constants/app_colors.dart';

class ButtonAccount extends StatelessWidget{
 

  const ButtonAccount({super.key,});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: Color(0xffF2F3F2),
      ),
      child: Center(child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          children: [
            Icon(Icons.logout_outlined,color: AppColors.primary,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130.0),
              child: Text("Log Out",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),),
            ),
          ],
        ),
      ),),
    );

  }
}
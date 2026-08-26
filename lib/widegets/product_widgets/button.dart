import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocries_app/screen/cart_screen.dart';



class Button1 extends StatelessWidget{


  const Button1({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  InkWell(
      onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CartScreen1(), // استبدل CartScreen باسم شاشتك
          ),
        );

      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: Color(0xff53B175),
        ),
        child: Center(child: Text("Add To Basket",style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),),),
      ),
    );

  }
}
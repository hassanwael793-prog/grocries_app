import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  final VoidCallback onTap;

  const Button({super.key, required this.onTap});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  InkWell(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: Color(0xff53B175),
        ),
        child: Center(child: Text("Login",style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),),),
      ),
    );

  }
}
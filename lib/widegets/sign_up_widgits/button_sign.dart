import 'package:flutter/material.dart';

class ButtonSign extends StatelessWidget{
  final VoidCallback onTap;


  const ButtonSign({super.key, required this.onTap});

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
        child: Center(child: Text("Sign Up",style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),),),
      ),
    );

  }
}
import 'package:flutter/material.dart';

import '../custom_text_field.dart';

class SignUpEmail extends StatelessWidget{
  const SignUpEmail({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return CustomTextField(labelText: "email",
     suffixIcon: Icon(Icons.check,
       color: Color(0xFF53B175),),
     validator: (value) {
       if (value == null || value.trim().isEmpty) {
         return "please enter your email";
       }
       final emailValue = RegExp(
           r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
       if (!emailValue.hasMatch(value.trim())) {
         return "Enter a valid email";
       }
       return null;
     },
   );
  }
}
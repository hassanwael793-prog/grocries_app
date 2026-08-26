import 'package:flutter/material.dart';

import '../custom_text_field.dart';

class SignUpPassword extends StatelessWidget{
  const SignUpPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomTextField(
      labelText: 'Password',
      obscureText: true,
      suffixIcon: Icon(Icons.visibility_off_outlined,
        color: Color(0xFF7C7C7C),),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 characters';
        }
        return null;
      },
    );
  }
}
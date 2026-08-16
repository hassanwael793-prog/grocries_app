
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '';
class CustomTextField extends StatelessWidget{
  final  String labelText;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  const CustomTextField({
    super.key,
    required this.labelText,
    this.validator,
    this.obscureText=false,
    this.suffixIcon,
      });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: validator,
      onTapOutside: (value){
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
        labelStyle:TextStyle(
          color: Color(0xFF7C7C7C),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide:BorderSide(
            color: Color(0xFFE2E2E2),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF53B175),
          )
        )
      ),


    );
  }
}
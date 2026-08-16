import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class SUsername extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomTextField(labelText: "Username",
      validator: (value){
        if(value == null || value.trim().isEmpty){
          return "Enter your name";
        }
        return null;
      },
    );
  }

}
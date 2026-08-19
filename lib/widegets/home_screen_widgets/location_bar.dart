import 'package:flutter/material.dart';

class LocationBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.location_on),
        Text(
          "Dhaka, Banassre",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff4C4F4D),
          ),
        ),
      ],
    );
  }
}
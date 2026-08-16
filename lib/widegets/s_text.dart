import 'package:flutter/cupertino.dart';

class SText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text.rich(
      TextSpan(
        text: 'By continuing you agree to our ',
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFF7C7C7C),
          height: 1.4,
        ),
        children: [
          TextSpan(
            text: 'Terms of Service',
            style:  TextStyle(
              color: Color(0xFF53B175),
              fontWeight: FontWeight.w500,
            ),
          ),
           TextSpan(
            text: '\nand ',
          ),
          TextSpan(
            text: 'Privacy Policy.',
            style:  TextStyle(
              color: Color(0xFF53B175),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
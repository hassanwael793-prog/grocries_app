

import 'package:flutter/cupertino.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height:28.4 ,
        ),
        Center(child: Image.asset('image/carrot.png')),
        SizedBox(
          height: 100.21,
        ),
        Text("Sign Up",style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight(600),
          color: Color(0xff181725),
        ),),
        SizedBox(
          height:15 ,
        ),
        Text("Enter your credentials to continue",style: TextStyle(
          color: Color(0xff7C7C7C),
          fontSize: 16,
          fontWeight: FontWeight(400),
        ),),
      ],
    );
  }
}
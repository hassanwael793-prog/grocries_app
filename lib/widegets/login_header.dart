

  import 'package:flutter/cupertino.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

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
        Text("Login",style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight(600),
          color: Color(0xff181725),
        ),),
        SizedBox(
          height:15 ,
        ),
        Text("Enter your email and password",style: TextStyle(
          color: Color(0xff7C7C7C),
          fontSize: 16,
          fontWeight: FontWeight(400),
        ),),
      ],
    );
  }
}
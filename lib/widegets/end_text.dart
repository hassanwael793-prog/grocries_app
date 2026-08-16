import 'package:flutter/cupertino.dart';

class EndText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Text("Don't have an account? ",style: TextStyle(
        fontWeight:FontWeight.w600
    ),),
    Text("Sing up ",style: TextStyle(
      color:Color(0XFF53b175),
    ),),
  ],
) ;
  }
}
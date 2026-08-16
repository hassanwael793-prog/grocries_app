import 'package:flutter/cupertino.dart';

class EndTextSign extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account? ",style: TextStyle(
            fontWeight:FontWeight.w600
        ),),
        Text("Singup ",style: TextStyle(
          color:Color(0XFF53b175),
        ),),
      ],
    ) ;
  }
}


import 'package:flutter/material.dart';
import 'package:grocries_app/screen/login_screen.dart';
import 'package:grocries_app/screen/sign_up.dart';

class GrocriyApp extends StatelessWidget{
  const GrocriyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SignInScreen() ,
    );
  }

}
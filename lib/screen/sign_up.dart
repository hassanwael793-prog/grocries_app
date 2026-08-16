import 'package:flutter/material.dart';
import 'package:grocries_app/widegets/button_sign.dart';
import 'package:grocries_app/widegets/custom_text_field.dart';
import 'package:grocries_app/widegets/end_Text_sign.dart';
import 'package:grocries_app/widegets/login_header.dart';
import 'package:grocries_app/widegets/s_text.dart';
import 'package:grocries_app/widegets/s_username.dart';
import 'package:grocries_app/widegets/sign_up_email.dart';
import 'package:grocries_app/widegets/sign_up_header.dart';
import 'package:grocries_app/widegets/sign_up_password.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.11),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SignUpHeader(),
                  SizedBox(
                    height:40 ,
                  ),
                  SUsername(),
                  SizedBox(
                    height: 30,
                  ),
              SignUpEmail(),
              SizedBox(
                height: 30,),
                  SignUpPassword(),
                  SizedBox(height: 20,),
                  SText(),
                  SizedBox(
                    height: 30,),
                  ButtonSign(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          print('done');}}),
                  SizedBox(
                    height: 25,),
                  EndTextSign(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
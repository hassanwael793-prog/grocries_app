


import 'package:flutter/material.dart';
import 'package:grocries_app/widegets/button.dart';
import 'package:grocries_app/widegets/custom_text_field.dart';
import 'package:grocries_app/widegets/end_text.dart';
import 'package:grocries_app/widegets/login_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.11),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeader(),
                SizedBox(
                  height: 40,
                ),
                CustomTextField(labelText: "email",
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "please enter your email";
                    }
                    final emailValue = RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                    if (!emailValue.hasMatch(value.trim())) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  labelText: 'Password',
                  obscureText: true,
                  suffixIcon: Icon(Icons.visibility_off_outlined,
                    color: Color(0xFF7C7C7C),),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Text("Forgot password?", style: TextStyle(
                    color: Color(0xff181725),
                  ),),
                ),
                SizedBox(
                  height: 30,
                ),
                Button(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      print('done');
                    }
                  },
                ),    SizedBox(
                  height: 25,
                ),
                EndText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

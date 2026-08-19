import 'package:flutter/material.dart';
import 'bottom_nav_bar_screen.dart';

class ShopeScreen extends StatelessWidget {
  const ShopeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.27),
        child: Column(
          children: [
            Center(child: Image.asset("image/carrot2.png", width: 30)),
            SizedBox(height: 7.6),
            Row(
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
            ),
            SizedBox(height: 20),
            TextFormField(
              cursorColor:Color(0XFF53B175),
              onTapOutside: (value){
                FocusScope.of(context).unfocus();
              },
              decoration: InputDecoration(
                fillColor: Color(0XFFF2F3F2),
                filled: true,
               hintText: "Search Store",
               prefixIcon:
               Padding(padding: EdgeInsets.only(left: 15),
               child: Icon(Icons.search)),
               enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

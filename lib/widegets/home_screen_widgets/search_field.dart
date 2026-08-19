import 'package:flutter/material.dart';

class SearchField extends StatelessWidget{
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  TextFormField(
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
    );
  }
}
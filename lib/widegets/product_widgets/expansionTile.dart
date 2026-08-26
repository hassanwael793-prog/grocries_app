import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Expansiontile extends StatefulWidget {
  const Expansiontile({super.key});

  @override
  State<Expansiontile> createState() => _ExpansiontileState();
}

class _ExpansiontileState extends State<Expansiontile> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      title: const Text(
        "Product Detail",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF181725),
        ),
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_down,
        color: Color(0xFF181725),
      ),
      children: const [
        Text(
          "Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healthful And Varied Diet.",
          style: TextStyle(
            fontSize: 13,
            color: Color(0xFF7C7C7C),
            height: 1.5,
          ),
        ),
        SizedBox(height: 15,),
      ],
    );
  }
}

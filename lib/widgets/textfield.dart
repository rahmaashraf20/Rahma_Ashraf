import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield({
    super.key, required this.icon, required this.hinttext,
  });
  final Icon icon;
  final String hinttext;


  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        prefixIcon: icon,
        enabledBorder:const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.black)),
        hintText: hinttext,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
        border: InputBorder.none,
      ),
    );
  }
}

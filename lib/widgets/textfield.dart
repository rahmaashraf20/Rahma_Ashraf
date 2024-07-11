import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  Textfield({
    super.key,
    required this.icon,
    required this.hinttext,
    required this.onchanged,
  });
  final Icon icon;
  final String hinttext;
  void Function(String) onchanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'field is required';
        } else if (value.length < 3) {
          return 'it must me more than 3 character';
        }
      },
      onChanged: onchanged,
      decoration: InputDecoration(
          prefixIcon: icon,
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(color: Colors.black)),
          hintText: hinttext,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
    );
    
  }
}

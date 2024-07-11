import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key,
      required this.text,
      required this.onTap,
      required this.color});
  final String text;
  final void Function() onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: color,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

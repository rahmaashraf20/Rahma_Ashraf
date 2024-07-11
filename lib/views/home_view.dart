import 'package:flutter/material.dart';
import 'package:task_2/widgets/category_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<Color> colors = const [Colors.red, Colors.white, Colors.green];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CategoryItem(
            text: 'IQ quiz',
            onTap: () {
              Navigator.of(context).pushNamed('quiz', arguments: colors[0]);
            },
            color: colors[0],
          ),
          CategoryItem(
            text: 'Sport quiz',
            onTap: () {
              Navigator.of(context).pushNamed('quiz', arguments: colors[1]);
            },
            color: colors[1],
          ),
          CategoryItem(
            text: 'History quiz',
            onTap: () {
              Navigator.of(context).pushNamed('quiz', arguments: colors[2]);
            },
            color: colors[2],
          ),
        ],
      ),
    );
  }
}

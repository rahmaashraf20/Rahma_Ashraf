import 'package:flutter/material.dart';
import 'package:task_2/screens/login.dart';
import 'package:task_2/screens/questions.dart';
import 'package:task_2/screens/score.dart';
import 'package:task_2/screens/splash.dart';

void main() {
  runApp(const Quizapp());
}

class Quizapp extends StatelessWidget {
  const Quizapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Login(),
    );
  }
}

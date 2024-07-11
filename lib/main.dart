import 'package:flutter/material.dart';
import 'package:task_2/views/home_view.dart';
import 'package:task_2/views/login_view.dart';
import 'package:task_2/views/quiz_view.dart';
import 'package:task_2/views/score_view.dart';
import 'package:task_2/views/splash_view.dart';

void main() {
  runApp(const Quizapp());
}

class Quizapp extends StatelessWidget {
  const Quizapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'home': (context) => const HomeView(),
        'quiz': (context) => QuizView(),
        'score': (context) => const ScoreView(),
        'login': (context) => LoginView(),
      },
      home: SplashView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_2/screens/login.dart';
import 'package:task_2/screens/splash.dart';

void main() {
  runApp(const Loginpage());
}

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:HomePage() ,
    );
  }
}

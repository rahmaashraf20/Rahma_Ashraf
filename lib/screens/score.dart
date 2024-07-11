import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body:
      Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('hello rahma you have finished the Quiz and your score is:'),
          Text(
            'score',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Text('20/20' , style: TextStyle(
            color: Colors.red , fontSize: 30 ,fontWeight: FontWeight.bold
          ),),
          ElevatedButton(onPressed: (){}, child: Text('try again',style: TextStyle(fontSize: 20),)),
          ElevatedButton(onPressed: (){}, child: Text('exit')),

        ],
          ),
      ));
  }
}
  

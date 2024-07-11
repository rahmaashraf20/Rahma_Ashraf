import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image:
              AssetImage('assets/images/background.jpg'), // Path to your image
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 5,
          ),
          Image.asset('assets/images/quiz_time.png'),
          const Text(
            'ITI Quiz App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
          const Text('We Are Creative, enjoy our App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              )),
          const Spacer(
            flex: 5,
          ),
          const CustomButton(),
          const Spacer(
            flex: 1,
          )
        ],
      ),
    ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff9a59b5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
              onPressed: () {
                Navigator.of(context).pushNamed('login');
              },
              child: const Text(
                'Start',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

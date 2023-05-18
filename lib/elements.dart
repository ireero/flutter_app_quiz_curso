import 'package:flutter/material.dart';

class Elements extends StatelessWidget {
  const Elements({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 250),
        const Padding(
          padding: EdgeInsets.only(top: 65, bottom: 45),
          child: Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
          ),
          child: const Text(
            'Start Quiz'
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {

  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}


class _Quiz extends State<Quiz> {

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.purple],
                  begin: AlignmentDirectional.topEnd,
                  end: Alignment.bottomLeft),
            ),
            child: const StartScreen()),
      ),
    );
  }
}
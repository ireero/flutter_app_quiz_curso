import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/quiz-logo.png', width: 250,),
              Padding(
                padding: const EdgeInsets.only(top: 65, bottom: 45),
                child: Text(
                  'Learn Flutter the fun way!',
                  style: GoogleFonts.lato(
                      fontSize: 25,
                      color: Colors.white
                  ),
                ),
              ),
              OutlinedButton.icon(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text(
                  'Start Quiz',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
      ),
    );
  }
}

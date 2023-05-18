import 'package:flutter/material.dart';
import 'package:quiz_app/elements.dart';

class BackgroundColor extends StatelessWidget {

  const BackgroundColor({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.deepPurple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: Elements()),
    );
  }

}
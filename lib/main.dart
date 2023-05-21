import 'package:flutter/material.dart';
import 'start_screen.dart';

void main() {
  MaterialApp(
      home: Scaffold(
    body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purple],
                begin: AlignmentDirectional.topEnd,
                end: Alignment.bottomLeft)),
        child: const StartScreen()),
  ));
}

import 'package:flutter/material.dart';
import 'package:quiz_app/background_color.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: BackgroundColor(),
    ),
  ));
}
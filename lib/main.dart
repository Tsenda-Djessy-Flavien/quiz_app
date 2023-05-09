import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Center(
          child: Image.asset('assets/images/quiz-logo.png', width: 200),
        ),
      ),
    ),
  );
}

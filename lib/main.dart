import 'package:flutter/material.dart';
import 'package:quiz_app/constante.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/quiz_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title_quiz_text,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GradientContainer(
        Center(
          child: QuizScreen(),
        ),
        colors: [
          gradient_purple_dark,
          gradient_purple_light,
        ],
      ),
    );
  }
}

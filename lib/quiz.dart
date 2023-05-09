import 'package:flutter/material.dart';
import 'package:quiz_app/constante.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title_quiz_text,
      home: Scaffold(
        body: GradientContainer(
          colors: [
            gradient_purple_dark,
            gradient_purple_light,
          ],
          StartScreen(),
        ),
      ),
    );
  }
}

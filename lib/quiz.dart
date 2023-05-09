import 'package:flutter/material.dart';
import 'package:quiz_app/constante.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = const StartScreen();

  void swicthScreen() {
    // toute les activités de modification de données qui doivent sur UI
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title_quiz_text,
      home: Scaffold(
        body: GradientContainer(
          colors: const [
            gradient_purple_dark,
            gradient_purple_light,
          ],
          activeScreen, // StartScreen(),
        ),
      ),
    );
  }
}

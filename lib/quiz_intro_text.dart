import 'package:flutter/material.dart';
import 'package:quiz_app/constante.dart';

class QuizIntroText extends StatelessWidget {
  const QuizIntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(quiz_intro_image, width: 300),
        const SizedBox(height: 80),
        const Text(
          quiz_intro_text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: white_color),
        ),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: () {},
          child: const Text(
            start_quiz_text_button,
            style: TextStyle(color: white_color),
          ),
        ),
      ],
    );
  }
}

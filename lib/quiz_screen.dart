import 'package:flutter/material.dart';
import 'package:quiz_app/constante.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

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
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: white_color,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(start_quiz_text_button),
        ),
      ],
    );
  }
}

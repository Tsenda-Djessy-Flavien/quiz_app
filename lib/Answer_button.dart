import 'package:flutter/material.dart';
import 'package:quiz_app/constante.dart';

class AnswerButton extends StatelessWidget {
  final VoidCallback onTap;
  final String answerText;

  const AnswerButton({
    required this.onTap,
    required this.answerText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: button_color,
        foregroundColor: white_color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      onPressed: onTap,
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}

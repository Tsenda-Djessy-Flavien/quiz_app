import 'package:flutter/material.dart';

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
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      onPressed: onTap,
      child: Text(answerText),
    );
  }
}

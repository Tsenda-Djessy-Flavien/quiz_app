import 'package:flutter/material.dart';
import 'package:quiz_app/Answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question...',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(onTap: () {}, answerText: 'Answer 1'),
          AnswerButton(onTap: () {}, answerText: 'Answer 2'),
          AnswerButton(onTap: () {}, answerText: 'Answer 3'),
        ],
      ),
    );
  }
}

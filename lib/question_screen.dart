import 'package:flutter/material.dart';
import 'package:quiz_app/Answer_button.dart';
import 'package:quiz_app/data/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final currentQuestion = questions[0];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          // AnswerButton(onTap: () {}, answerText: currentQuestion.answers[0]),
          // AnswerButton(onTap: () {}, answerText: currentQuestion.answers[1]),
          // AnswerButton(onTap: () {}, answerText: currentQuestion.answers[2]),
          // AnswerButton(onTap: () {}, answerText: currentQuestion.answers[3]),

          // convertir la liste String des reponse de QuizQuestion en liste de Widget button des reponses
          ...currentQuestion.answers.map((answer) {
            // ... extrait la liste enfant dans la liste parent // e.g :  strat -> [[1, 2, 3], 4], end -> [1, 2, 3, 4]
            return AnswerButton(onTap: () {}, answerText: answer);
          }),
        ],
      ),
    );
  }
}

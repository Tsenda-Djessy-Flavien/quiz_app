import 'package:flutter/material.dart';
import 'package:quiz_app/Answer_button.dart';
import 'package:quiz_app/data/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void AnswerQuestion() {
    // possible d'incrementer par 1 et Plus.
    // currentQuestionIndex = currentQuestionIndex + 1;
    // currentQuestionIndex += 1; // possible d'incrementer par 1 et Plus.
    setState(() {
      currentQuestionIndex++; // incrementer juste par 1
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          // mainAxisAlignment -> centré par rapport a la vertical
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment -> centré par rapport a l'horizontal
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // AnswerButton(onTap: () {}, answerText: currentQuestion.answers[0]),
            // AnswerButton(onTap: () {}, answerText: currentQuestion.answers[1]),
            // AnswerButton(onTap: () {}, answerText: currentQuestion.answers[2]),
            // AnswerButton(onTap: () {}, answerText: currentQuestion.answers[3]),

            // convertir la liste String des reponse de QuizQuestion en liste de Widget button des reponses
            // ...currentQuestion.answers -> acceder aux responses de la questions actuelle  // ...currentQuestion.getShuffedAnswers() -> acceder a question actuelle
            ...currentQuestion.getShuffedAnswers().map((answer) {
              // ... extrait la liste enfant dans la liste parent // e.g :  strat -> [[1, 2, 3], 4], end -> [1, 2, 3, 4]
              return AnswerButton(onTap: AnswerQuestion, answerText: answer);
            }),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/presentation/widgets/questions_summary/questions_summary.dart';
import 'package:quiz_app/utils/constants.dart';

class ResultScreen extends StatelessWidget {
  final List<String> chosenAnswers;
  final VoidCallback onReStart;
  const ResultScreen({
    required this.chosenAnswers,
    required this.onReStart,
    super.key,
  });

  // afficher la response de l'utisateur par rapport à la question
  /// Pour se faire on doit conbiner les responses choisies
  /// avec les questions que nous avons dans le fichiers
  List<Map<String, Object>> getSummaryData() {
    // get SummaryData {} <- autre facon d'ecrire cette method ou getters
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    // where -> permet de filtrer une liste en renvoyant la nouvelle sans changer la liste initiale
    final numCorrectAnswer = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectAnswer out of $numTotalQuestion questions correctlty!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 200, 253),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed: onReStart,
              style: TextButton.styleFrom(
                foregroundColor: white_color,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}

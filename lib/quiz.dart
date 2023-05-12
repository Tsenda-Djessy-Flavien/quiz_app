import 'package:flutter/material.dart';
import 'package:quiz_app/constante.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  // ceci executera avant la methode de construction (Widget build)
  // @override
  // void initState() {
  //   activeScreen = StartScreen(
  //       swicthScreen); // StartScreen : va initier l'Etat et doit avoir accès à la fun de changement d'Etat.
  //   super.initState();
  // }

  /// connecter cette function au boutton (start_screen.dart) qui declanchera l'event
  void swicthScreen() {
    // toute les activités de modification de données qui doivent sur UI
    setState(() {
      // activeScreen = const QuestionScreen();
      activeScreen = 'question-screen';
    });
    // print(activeScreen);
  }

  void chooseAnwer(String answer) {
    selectedAnswers.add(answer);
    // print(selectedAnswers);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        // une fois que nous avons, nous devons réinitialisé les réponses sélectionnées
        selectedAnswers = [];
        activeScreen = 'result-screen';
      });
      // print(activeScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(swicthScreen)
    //     : const QuestionScreen();

    Widget screenWidget = StartScreen(swicthScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnwer);
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(chosenAnswers: selectedAnswers);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title_quiz_text,
      home: Scaffold(
        body: GradientContainer(
          colors: const [
            gradient_purple_dark,
            gradient_purple_light,
          ],
          // nous rendons le contenu de manière conditionnel
          // activeScreen!, // StartScreen(),
          // activeScreen == 'start-screen'
          //     ? StartScreen(swicthScreen)
          //     : const QuestionScreen(),
          screenWidget,
        ),
      ),
    );
  }
}

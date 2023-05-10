import 'package:flutter/material.dart';
import 'package:quiz_app/constante.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback startQuiz;

  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //----- 1fst Method ----
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(quiz_intro_image, width: 300),
          // ),
          //----- 2nd Mehtod ---- // recommander
          Image.asset(
            quiz_intro_image,
            width: 300,
            color: opacity_image_color,
          ),
          const SizedBox(height: 80),
          const Text(
            quiz_intro_text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: white_color),
          ),
          const SizedBox(height: 30),

          /// Le bouton (StartScreen) qui va déclencher le changement d'état vers ---> (QuestionScreen) qui va être affecté par le changement d'état
          /// ce widget (StartScreen) va fonctionné ensemble avec le (QuestionScreen) // en résumé nous avons deux widgets qui vont fonctionner ensemble avec un même Etat.
          // la solution consiste à relever(gérer) l'Etat dans Quiz.dart et ensuite creer une fn qui permettra de manipuler l'Etat de ce Widget ;
          // d'où nous pouvons facilement passé d'un widget à un autre (de StartScreen.dart vers ---> QuestionScreen.dart) en effectuant un rendu conditionnel du contenu
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: white_color,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(start_quiz_text_button),
          ),
        ],
      ),
    );
  }
}

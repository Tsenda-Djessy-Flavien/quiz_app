class QuizQuestion {
  final String text;
  final List<String> answers;

  QuizQuestion(this.text, this.answers);

  // shuffed -> permet de mélanger les elements d'une liste
  List<String> getShuffedAnswers() {
    final shuffedList = List.of(answers); // List.of -> copier la list initiale
    shuffedList.shuffle(); // shuffed -> mélanger la list copier
    return shuffedList;
  }
}

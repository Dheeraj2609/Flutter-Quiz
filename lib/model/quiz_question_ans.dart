class ActiveQuestion {
  const ActiveQuestion(this.quizTextVal, this.quizAnsval);

  final String quizTextVal;
  final List<String> quizAnsval;

  List<String> shuffleAnswer() {
    final newQuizAnswer = List.of(quizAnsval);
    newQuizAnswer.shuffle();
    return newQuizAnswer;
  }
}
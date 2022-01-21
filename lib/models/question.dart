class Quiz {
  final String question;
  final List<String> possibleAnswers;
  final int correctAnswersIndex;
  const Quiz({
    required this.question,
    required this.possibleAnswers,
    required this.correctAnswersIndex,
  });
}

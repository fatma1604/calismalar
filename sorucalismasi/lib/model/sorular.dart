class QuestionModel {
  const QuestionModel(this.question, this.answers,this.corrextAnswerIndex);

  final String question;
  final List<String> answers;
  final int corrextAnswerIndex;
}

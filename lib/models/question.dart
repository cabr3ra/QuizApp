// Class to represent a quiz question
class Question {

  final String questionText;                    // Text of the question
  final List<String> answers;                   // List of possible answers
  final int correctAnswerIndex;                 // Index of the correct answer

  // Constructor for the Question class
  Question({
    required this.questionText,
    required this.answers,
    required this.correctAnswerIndex,
  });
}

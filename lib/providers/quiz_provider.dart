import 'package:flutter/material.dart';
import 'package:quiz_app/models/question.dart';

// Class to manage the quiz state
class QuizProvider with ChangeNotifier {

  // List of quiz questions
  final List<Question> _questions = [
    Question(
      questionText: 'What is the capital of France?',
      answers: ['Paris', 'London', 'Rome', 'Berlin'],
      correctAnswerIndex: 0,
    ),
    Question(
      questionText: 'What is 2 + 2?',
      answers: ['3', '4', '5', '6'],
      correctAnswerIndex: 1,
    ),
    // Add more questions here
  ];

  // Index of the current question
  int _currentQuestionIndex = 0;
  // User's score
  int _score = 0;

  // Get list of questions
  List<Question> get questions => [..._questions];
  // Get current question index
  int get currentQuestionIndex => _currentQuestionIndex;
  // Get user's score
  int get score => _score;

  // Process the selected answer
  void answerQuestion(int selectedAnswerIndex) {
    // Check if the answer is correct
    if (selectedAnswerIndex == _questions[_currentQuestionIndex].correctAnswerIndex) {
      _score++; // Increase score if correct
    }
    _currentQuestionIndex++; // Move to the next question
    notifyListeners(); // Notify listeners about state change
  }

  // Reset the quiz
  void resetQuiz() {
    _currentQuestionIndex = 0; // Reset current question index
    _score = 0; // Reset score
    notifyListeners(); // Notify listeners about state change
  }

  // Check if there are more questions
  bool get hasMoreQuestions {
    return _currentQuestionIndex < _questions.length;
  }

  // Get the current question
  Question get currentQuestion {
    return _questions[_currentQuestionIndex];
  }
}

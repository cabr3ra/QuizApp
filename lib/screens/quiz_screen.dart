import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/quiz_provider.dart';
import '../widgets/question_widget.dart';
import 'result_screen.dart';

// Screen to display the quiz questions
class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'), // Screen title
      ),
      body: Consumer<QuizProvider>(
        builder: (context, quizProvider, child) {
          // Check if there are more questions
          if (!quizProvider.hasMoreQuestions) {
            // If no more questions, show a button to see results
            return Center(
              child: ElevatedButton(
                child: Text('See Results'),
                onPressed: () {
                  // Navigate to the results screen
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => ResultScreen(),
                  ));
                },
              ),
            );
          } else {
            // If there are more questions, show the current question
            return QuestionWidget(
              question: quizProvider.currentQuestion,
              onAnswerSelected: (int selectedIndex) {
                // Process the selected answer
                quizProvider.answerQuestion(selectedIndex);
              },
            );
          }
        },
      ),
    );
  }
}

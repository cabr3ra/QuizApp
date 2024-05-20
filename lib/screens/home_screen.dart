import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/providers/quiz_provider.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

// Main screen of the app
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'), // App title
      ),
      body: Center(
        // Button to start the quiz
        child: ElevatedButton(
          child: Text('Start Quiz'),
          onPressed: () {
            // Reset the quiz before starting
            Provider.of<QuizProvider>(context, listen: false).resetQuiz();
            // Navigate to the quiz screen
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => QuizScreen(),
            ));
          },
        ),
      ),
    );
  }
}

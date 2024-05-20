import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/providers/quiz_provider.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

// Screen to display the quiz results
class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the user's score
    final score = Provider.of<QuizProvider>(context).score;
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'), // Screen title
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the user's score
            Text(
              'Your Score: $score',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            // Button to restart the quiz
            ElevatedButton(
              child: Text('Restart Quiz'),
              onPressed: () {
                // Reset the quiz
                Provider.of<QuizProvider>(context, listen: false).resetQuiz();
                // Navigate to the quiz screen
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => QuizScreen(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

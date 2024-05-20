import 'package:flutter/material.dart';
import '../models/question.dart';
import 'answer_widget.dart';

// Widget to display a question and its answers
class QuestionWidget extends StatelessWidget {
  final Question question;
  final Function(int) onAnswerSelected;

  QuestionWidget({
    required this.question,
    required this.onAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Display the question text
        Text(
          question.questionText,
          style: TextStyle(fontSize: 24),
        ),
        // Display the answer options
        ...List.generate(
          question.answers.length,
              (index) => AnswerWidget(
            answerText: question.answers[index],
            index: index,
            onAnswerSelected: onAnswerSelected,
          ),
        ),
      ],
    );
  }
}

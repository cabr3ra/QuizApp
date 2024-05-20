import 'package:flutter/material.dart';

// Widget to display an answer option
class AnswerWidget extends StatelessWidget {
  final String answerText;
  final int index;
  final Function(int) onAnswerSelected;

  AnswerWidget({
    required this.answerText,
    required this.index,
    required this.onAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(answerText),
      onPressed: () {
        // Call the function when an answer is selected
        onAnswerSelected(index);
      },
    );
  }
}

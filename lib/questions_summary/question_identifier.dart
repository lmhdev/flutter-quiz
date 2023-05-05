import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 211, 255, 157)
              : const Color.fromARGB(255, 255, 178, 182),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          (questionIndex + 1).toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isCorrectAnswer
                ? const Color.fromARGB(255, 22, 2, 56)
                : const Color.fromARGB(255, 84, 84, 84),
          ),
        ));
  }
}

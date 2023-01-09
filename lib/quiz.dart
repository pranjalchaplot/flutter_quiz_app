import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(this.answerQuestion, this.questions, this.questionIndex,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['questionText'] as String),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
          answer['anime'] as String,
          () => {
            answerQuestion(answer['score']),
          },
        );
      }).toList(),
    ]);
  }
}

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  StatelessWidget build(BuildContext context) {
    return Text(questionText);
  }
}

import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _answerChosen() {
    setState(() {
      _questionIndex++;
      _questionIndex %= 2;
    });
  }

  var _questionIndex = 0;
  var questions = [
    {
      'questionText': 'What\'s the current best Anime?',
      'answers': [
        'Chainsaw Man',
        'Demon Slayer',
        'Jujutsu Kaisen',
        'SPYxFAMILY',
      ]
    },
    {
      'questionText': 'What\'s the greatest anime of all time',
      'answers': [
        'Dragon Ball',
        'Death Note',
        'Pokemon',
        'Doraemon',
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Anime Quiz'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]['questionText'] as String),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(answer, _answerChosen);
          }).toList(),
        ]),
      ),
    );
  }
}

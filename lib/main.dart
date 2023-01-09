import 'package:flutter/material.dart';

import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';

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
  void _answerChosen(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = [
    {
      'questionText': 'What\'s the current best Anime?',
      'answers': [
        {
          'anime': 'Chainsaw Man',
          'score': 40,
        },
        {
          'anime': 'Demon Slayer',
          'score': 80,
        },
        {
          'anime': 'Jujutsu Kaisen',
          'score': 60,
        },
        {
          'anime': 'SPYxFAMILY',
          'score': 100,
        },
      ]
    },
    {
      'questionText': 'What\'s the greatest anime of all time',
      'answers': [
        {
          'anime': 'Dragon Ball',
          'score': 60,
        },
        {
          'anime': 'Death Note',
          'score': 40,
        },
        {
          'anime': 'Poke mon',
          'score': 100,
        },
        {
          'anime': 'Dorae mon',
          'score': 80,
        },
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
        body: _questionIndex < _questions.length
            ? Quiz(_answerChosen, _questions, _questionIndex)
            : ResultScreen(_reset, _totalScore),
      ),
    );
  }
}

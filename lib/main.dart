import 'package:flutter/material.dart';

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
    'What\'s the current best Anime?',
    'What\'s the greatest anime of all time',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Anime Quiz'),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerChosen,
              child: const Text('jai'),
            ),
            ElevatedButton(
              onPressed: _answerChosen,
              child: const Text('shree'),
            ),
            ElevatedButton(
              onPressed: _answerChosen,
              child: const Text('ram'),
            ),
          ],
        ),
      ),
    );
  }
}

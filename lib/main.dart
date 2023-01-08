import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void answerChosen() {
    setState(() {
      questionIndex++;
      questionIndex %= 2;
    });
  }

  var questionIndex = 0;
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
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerChosen,
              child: const Text('jai'),
            ),
            ElevatedButton(
              onPressed: answerChosen,
              child: const Text('shree'),
            ),
            ElevatedButton(
              onPressed: answerChosen,
              child: const Text('ram'),
            ),
          ],
        ),
      ),
    );
  }
}

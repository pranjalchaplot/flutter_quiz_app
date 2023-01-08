import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void answerChosen() => print('answer chosen!');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('good morning'),
        ),
        body: Column(
          children: [
            const Text("jai bajrang bali"),
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

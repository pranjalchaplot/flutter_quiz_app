import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final VoidCallback resetHandler;
  final int totalScore;

  const ResultScreen(this.resetHandler, this.totalScore, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Haa bhai, hogya quiz mazzze karo $totalScore',
          ),
        ),
        ElevatedButton(
          onPressed: resetHandler,
          child: const Text('RESET'),
        )
      ],
    );
  }
}

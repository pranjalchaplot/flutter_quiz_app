import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final VoidCallback resetHandler;
  final int totalScore;

  const ResultScreen(this.resetHandler, this.totalScore, {super.key});

  String get resultPhrases {
    String resultText;
    if (totalScore >= 80 && totalScore < 120) {
      resultText = 'are you from the DC universe';
    } else if (totalScore >= 120 && totalScore < 160) {
      resultText = 'bhai dhange k anime dekh le';
    } else if (totalScore >= 160 && totalScore < 200) {
      resultText = 'haa thike hai, par improvement krni pdegi';
    } else {
      resultText = 'GOAT🐐';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            '$resultPhrases $totalScore',
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

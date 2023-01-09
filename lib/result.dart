import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final VoidCallback resetHandler;

  const ResultScreen(this.resetHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text(
            'Haa bhai, hogya quiz mazzze karo',
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

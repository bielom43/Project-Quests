// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result(this.pontuation, this.resetQuests, {super.key});
  final int pontuation;
  final void Function() resetQuests;

  String get resultPhrase {
    if (pontuation < 8) {
      return 'Congratulation!';
    } else if (pontuation < 12) {
      return 'You are good';
    } else {
      return 'Jedi level!';
    }
  }

  final ButtonStyle resetButton = TextButton.styleFrom(
    textStyle: TextStyle(fontSize: 30),
    foregroundColor: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
        ),
        TextButton(
          onPressed: resetQuests,
          style: resetButton,
          child: Text('Reset?'),
        ),
      ],
    );
  }
}

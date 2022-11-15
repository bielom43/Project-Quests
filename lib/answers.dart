import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String txt;
  final void Function() onSelected;
  Answer(this.txt, this.onSelected, {super.key});

  final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(
      fontSize: 15,
    ),
    backgroundColor: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: style,
        onPressed: onSelected,
        child: Text(
          txt,
          style: const TextStyle(
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}

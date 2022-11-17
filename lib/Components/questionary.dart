import 'package:flutter/material.dart';
import 'package:project_quest/Components/question.dart';
import 'package:project_quest/Components/answers.dart';

class Questionary extends StatelessWidget {
  final List<Map<String, Object>> quests;
  final int selectedQuest;
  final void Function(int) answeres;

  const Questionary({
    super.key,
    required this.quests,
    required this.answeres,
    required this.selectedQuest,
  });

  bool get haveQuestionSelected {
    return selectedQuest < quests.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = haveQuestionSelected
        ? quests[selectedQuest]['Answers'] as List<Map<String, Object>>
        : [];
    return Column(
      children: [
        Question(quests[selectedQuest]['Text'] as String),
        ...answers.map((ans) {
          return Answer(
            ans['Text'] as String,
            () => answeres(int.parse(ans['points'].toString())),
          );
        }).toList(),
      ],
    );
  }
}

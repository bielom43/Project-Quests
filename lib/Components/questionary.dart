import 'package:flutter/material.dart';
import 'package:project_quest/Components/question.dart';
import 'package:project_quest/Components/answers.dart';

class Questionary extends StatelessWidget {
  final List<Map<String, Object>> quests;
  final int selectedQuest;
  final void Function() answeres;

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
    List<String> answers = haveQuestionSelected
        ? quests[selectedQuest].cast()['Answers'] as List<String>
        : [];
    return Column(
      children: [
        Question(quests[selectedQuest]['Text'] as String),
        ...answers.map((t) => Answer(t, answeres)).toList(),
      ],
    );
  }
}

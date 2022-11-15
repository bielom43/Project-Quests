// ignore_for_file: camel_case_types
// ignore_for_file: prefer_const_constructors
// ignore_for_file: sort_child_properties_last
// ignore_for_file: avoid_print
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:project_quest/Components/result.dart';
import 'package:project_quest/Components/questionary.dart';

void main(List<String> args) => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  final List<Map<String, Object>> _quests = const [
    {
      'Text': 'What is your favorite color?',
      'Answers': ['Blue', 'Purple', 'Red']
    },
    {
      'Text': 'What is your favorite animal?',
      'Answers': ['Cat', 'Dog', 'Bird']
    },
    {
      'Text': 'What is your favorite programmation language?',
      'Answers': ['Flutter!', 'Python!', 'Typescript🤢']
    },
  ];

  void _answer() {
    if (haveQuestionSelected) {
      setState(() => _selectedQuestion++);
    }
  }

  bool get haveQuestionSelected {
    return _selectedQuestion < _quests.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Questions'),
        ),
        body: haveQuestionSelected
            ? Questionary(
                quests: _quests,
                answeres: _answer,
                selectedQuest: _selectedQuestion,
              )
            : Result(),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}

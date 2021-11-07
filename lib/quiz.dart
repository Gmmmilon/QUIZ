import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final int answerIndex;
  final Function answerQuestions;
  final List<Map<String, Object>> questions;

  Quiz({
    required this.answerQuestions,
    required this.questions,
    required this.answerIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[answerIndex]['questionText'] as String),
        ...(questions[answerIndex]['answers'] as List).map((answer) {
          return Answers(
              () => answerQuestions(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
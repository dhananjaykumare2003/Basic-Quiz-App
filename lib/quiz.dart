import 'package:flutter/material.dart';

import './question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> options;
  final Function(int) answerQuestion;
  Quiz(
      {required this.questionIndex,
      required this.options,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        question(options[questionIndex]['questions'] as String),
        ...(options[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return ElevatedButton(
              style: ButtonStyle(alignment: Alignment.center),
              onPressed: () => answerQuestion(answer['score'] as int),
              child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(answer['text'] as String)));
        }).toList()
      ],
    );
  }
}

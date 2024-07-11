import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuiz;
  final int totalScore;
  Result({required this.resetQuiz, required this.totalScore});

  String get resultPhrase {
    String show;
    if (totalScore < 10) {
      show = 'You are innocent!!!';
    } else if (totalScore < 12) {
      show = 'You are strange!!!';
    } else if (totalScore < 14) {
      show = 'Pretty Likeable!!!';
    } else {
      show = 'You are so bad!!!';
    }
    return show;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          width: double.infinity,
          child: Text(
            resultPhrase,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        OutlinedButton(onPressed: resetQuiz, child: Text('Restart')),
      ],
    );
  }
}

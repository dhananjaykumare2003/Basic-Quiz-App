import 'package:flutter/material.dart';
import 'package:quiz_practice/quiz.dart';
import 'package:quiz_practice/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final options = [
    {
      'questions': 'Which is your\'s favourite animal',
      'answers': [
        {'text': 'Tiger', 'score': 6},
        {'text': 'Lion', 'score': 9},
        {'text': 'Panda', 'score': 1},
        {'text': 'Rabbit', 'score': 3},
      ]
    },
    {
      'questions': 'Which is your\'s favourite color',
      'answers': [
        {'text': 'blue', 'score': 4},
        {'text': 'black', 'score': 9},
        {'text': 'green', 'score': 1},
        {'text': 'red', 'score': 6},
      ]
    },
    {
      'questions': 'which type of movie is your\'s favourite movie',
      'answers': [
        {'text': 'triller', 'score': 6},
        {'text': 'horror', 'score': 9},
        {'text': 'funny', 'score': 1},
        {'text': 'lovestory', 'score': 3},
      ]
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;
  void answerQuestion(int score) {
    totalScore = totalScore + score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: questionIndex < options.length
              ? Quiz(
                  questionIndex: questionIndex,
                  options: options,
                  answerQuestion: answerQuestion)
              : Result(
                  resetQuiz: resetQuiz,
                  totalScore: totalScore,
                )),
    );
  }
}

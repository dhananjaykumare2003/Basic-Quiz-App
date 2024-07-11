import 'package:flutter/material.dart';

class question extends StatelessWidget {
  final question_controller;
  const question(this.question_controller);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Text(
          question_controller,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}

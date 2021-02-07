import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(9),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}

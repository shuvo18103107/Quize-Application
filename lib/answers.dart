import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function handler;
  Answers(this.handler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text("Answer Question 1"),
        onPressed: handler,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String anstext;
  final Function handler;
  Answers(this.handler, this.anstext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(anstext),
        onPressed: handler,
      ),
    );
  }
}

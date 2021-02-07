import 'package:flutter/material.dart';
import 'package:quize_application/answers.dart';
import './questions.dart';
import './answers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _queCounter = 0;

  void _answerQuestion() {
    setState(() {
      _queCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questionList = [
      'What\'s Your Favourite Animal?',
      'What\'s Your Favourite Flower?',
      'What\'s Your Favourite Movie?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quize Application"),
        ),
        body: Column(
          children: [
            Question(questionList[_queCounter]),
            Answers(_answerQuestion),
            Answers(_answerQuestion),
            Answers(_answerQuestion),
          ],
        ),
      ),
    );
  }
}

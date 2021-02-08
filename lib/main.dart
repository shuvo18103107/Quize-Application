import 'package:flutter/material.dart';
import 'quize.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questionList = const [
    {
      'questiontext': 'What\'s Your Favourite Animal?',
      'answerText': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Tiger', 'score': 6},
        {'text': 'Lion', 'score': 5},
        {'text': 'Snake', 'score': 3},
      ]
    },
    {
      'questiontext': 'What\'s Your Favourite Movie?',
      'answerText': [
        {'text': 'Shutter-Island', 'score': 10},
        {'text': 'Inception', 'score': 6},
        {'text': 'Dark Knight', 'score': 5},
        {'text': 'Joker', 'score': 3},
      ]
    },
    {
      'questiontext': 'What\'s Your Favourite Flower?',
      'answerText': [
        {'text': 'Rose', 'score': 10},
        {'text': 'Sunflower', 'score': 6},
        {'text': 'Water-Lily', 'score': 5},
        {'text': 'Tubelip', 'score': 3},
      ]
    },
  ];

  var _queCounter = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _queCounter++;
    });
    _totalScore += score;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quize Application"),
          ),
          body: _queCounter < _questionList.length
              ? Quize(
                  questionList: _questionList,
                  answerQuestion: _answerQuestion,
                  queCounter: _queCounter,
                )
              : Result()),
    );
  }
}

import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int queCounter;
  final Function answerQuestion;
  Quize({
    @required this.questionList,
    @required this.answerQuestion,
    @required this.queCounter,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionList[queCounter]['questiontext']),
        ...(questionList[queCounter]['answerText'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}

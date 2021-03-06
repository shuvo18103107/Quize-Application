import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resetquize;
  Result(this.resultscore, this.resetquize);
  // get is a combination of variable and method its never take any argument ,just return the value or function
  String get resultphrase {
    String resultText;
    if (resultscore <= 10 && resultscore >= 5) {
      resultText = 'You are awsome and innocent!';
    } else if (resultscore <= 15 && resultscore >= 11) {
      resultText = 'Pretty Likable!';
    } else if (resultscore <= 30 && resultscore >= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  int get totalscorepoint {
    return resultscore;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultphrase,
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            '$totalscorepoint',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: FlatButton(
            child: Text(
              'Restart Quize ',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: resetquize,
          ),
        )
      ],
    );
  }
}

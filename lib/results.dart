import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = "Done";

    if (resultScore <= 20) {
      resultText = "You are avarage";
    } else if (resultScore <= 30) {
      resultText = "You are good";
    } else {
      resultText = "You are excellent";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            color: Colors.blueAccent,
            child: Text(
              "Restart quiz",
            ),
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
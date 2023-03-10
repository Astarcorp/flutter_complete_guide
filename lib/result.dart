import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;
  final int totalScore;

  Result({this.totalScore, this.resetQuiz});

  //getters
  String get resultPhrase {
    String resultText;

    if (totalScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (totalScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (totalScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text('Restart Quiz!'),
            onPressed: () => resetQuiz(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  String get resultScore {
    var resultText;

    if (totalScore <= 10) {
      resultText = 'You are angel!';
    } else if (totalScore <= 18) {
      resultText = 'You are pretty!';
    } else if (totalScore <= 50) {
      resultText = 'You are cool!';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultScore,
            style: TextStyle(
                color: Colors.cyan, fontSize: 28, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
        ),
        FlatButton(onPressed: resetQuiz, child: Text('Restart Quiz!'))
      ],
    );
  }
}

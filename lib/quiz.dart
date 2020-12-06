import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function _answerQuestion;
  final List<Map<String, Object>> _question;
  final int _questionIndex;

  Quiz(this._answerQuestion, this._question, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_question[_questionIndex]['questionTest']),
        ...(_question[_questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => _answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}

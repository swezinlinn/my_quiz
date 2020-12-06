import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final question = const [
    {
      'questionTest': 'What\'s your name?',
      'answers': [
        {'text': 'Black', 'score': 30},
        {'text': 'Red', 'score': 50},
        {'text': 'Green', 'score': -50},
        {'text': 'White', 'score': 10}
      ]
    },
    {
      'questionTest': 'What\'s your fav animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Cat', 'score': -30},
        {'text': 'Dog', 'score': 50},
        {'text': 'Snake', 'score': -10}
      ]
    },
    {
      'questionTest': 'Who\'s your fav person?',
      'answers': [
        {'text': 'Su', 'score': 30},
        {'text': 'Max', 'score': -40},
        {'text': 'Tom', 'score': 50},
        {'text': 'Aye', 'score': -10}
      ]
    }
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Quiz'),
            ),
            body: (_questionIndex < question.length)
                ? Quiz(_answerQuestion, question, _questionIndex)
                : Result(_totalScore, _resetQuiz),
        )
    );
  }
}

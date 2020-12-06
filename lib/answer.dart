import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function stateHandler;
  final String answer;

  Answer(this.stateHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answer,
        style: TextStyle(color: Colors.white),), onPressed: stateHandler),
    );
  }
}

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 15, right: 15),
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHandler,
      ),
    );
  }
}

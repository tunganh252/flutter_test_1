import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String textAnswer;
  final Function selectHandler;

  Answer(this.textAnswer, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(textAnswer),
        onPressed: selectHandler,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}

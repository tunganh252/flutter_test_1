import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String textBtn;
  final Function selectHandler;

  Answer(this.textBtn, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(textBtn),
        onPressed: selectHandler,
        color: Colors.blue,
      ),
    );
  }
}

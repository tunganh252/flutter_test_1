import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreResult;
  final Function callbackFunc;

  Result(this.scoreResult, this.callbackFunc);

  String get resultPharse {
    var resultText = 'You did it!';
    if (scoreResult <= 25)
      resultText = 'You are so bad!';
    else if (scoreResult <= 50)
      resultText = 'You so good';
    else
      resultText = 'You are so bad!';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPharse,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: callbackFunc,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}

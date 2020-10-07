import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var question = [
    'What\'s your favorite color',
    'What\'s your favorite animal',
    'What\'s your favorite animal2',
    'What\'s your favorite animal3',
  ];

  var _indexQuestion = 0;

  void _answerQuestion() {
    if (_indexQuestion >= question.length - 1) return;
    print('length arr: ${question.length}');
    print('_indexQuestion: ${_indexQuestion}');
    setState(() {
      _indexQuestion = _indexQuestion + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Column(
        children: <Widget>[
          Question(question[_indexQuestion]),
          Answer("Red", _answerQuestion),
          Answer("Green", _answerQuestion),
          Answer("Blue", _answerQuestion),
        ],
      ),
    ));
  }
}

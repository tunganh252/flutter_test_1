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
    {
      'textQuestion': 'What\'s your favorite color ',
      'answers': ['Red', 'Green', 'Blue', 'Yellow']
    },
    {
      'textQuestion': 'What\'s your favorite animal',
      'answers': ['Cat', 'Dog', 'Chicken']
    },
    {
      'textQuestion': 'What\'s your favorite food ',
      'answers': ['Sandwich', 'Hamburger', 'Pizza']
    },
  ];

  var _indexQuestion = 0;

  void _answerQuestion() {
    if (_indexQuestion >= question.length - 1) {
      setState(() {
        _indexQuestion = 0;
      });
      return;
    }
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
          Question(question[_indexQuestion]['textQuestion']),
          ...(question[_indexQuestion]['answers'] as List<String>)
              .map((answer) {
            return Answer(answer, _answerQuestion);
          })
        ],
      ),
    ));
  }
}

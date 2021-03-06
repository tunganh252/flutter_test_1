import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final question = const [
    {
      'textQuestion': 'What\'s your favorite color ',
      'answers': [
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 10},
        {'text': 'Blue', 'score': 15},
        {'text': 'Yellow', 'score': 25},
      ]
    },
    {
      'textQuestion': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 14},
        {'text': 'Chicken', 'score': 28},
      ]
    },
    {
      'textQuestion': 'What\'s your favorite food ',
      'answers': [
        {'text': 'Sandwich', 'score': 7},
        {'text': 'Hamburger', 'score': 16},
        {'text': 'Chicken', 'score': 27},
      ],
    },
  ];

  var _indexQuestion = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _indexQuestion = _indexQuestion + 1;
    });
    print(_totalScore);
  }

  void _resetScore() {
    setState(() {
      _indexQuestion = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My First App"),
            ),
            body: _indexQuestion < question.length
                ? Column(
                    children: <Widget>[
                      Question(question[_indexQuestion]['textQuestion']),
                      ...(question[_indexQuestion]['answers']
                              as List<Map<String, Object>>)
                          .map((answer) {
                        return Answer(answer['text'],
                            () => _answerQuestion(answer['score']));
                      })
                    ],
                  )
                : Result(_totalScore, _resetScore)));
  }
}

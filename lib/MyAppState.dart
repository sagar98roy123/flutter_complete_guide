import 'package:flutter/material.dart';
import './main.dart';
import './quiz.dart';
import './result.dart';

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Blue', 'White', 'Green']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Lion', 'Tiger', 'Cow']
    },
    {
      'questionText': 'What\'s your favorite ipl team?',
      'answers': ['CSK', 'MI', 'KKR', 'DC']
    },
  ];
  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      print('We have no more question!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result()),
    );
  }
}

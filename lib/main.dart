import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // the state belongs to my app

  final _questions = const [
    // We use map to define a set of question and answers.
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Snake', 'score': 10},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 5},
      ]
    },
    {
      'questionText': 'Who\'s your favourite hero',
      'answers': [
        {'text': 'Iron Man', 'score': 3},
        {'text': 'Cap. America', 'score': 10},
        {'text': 'Thor', 'score': 5},
        {'text': 'Hulk', 'score': 4},
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz()
  {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  

  void _answerQuestion(int score) {

    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex++;
    });

    if (_questionIndex < _questions.length) {
      print("We have more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Personality Test Quiz',
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
        backgroundColor: Colors.grey[850],
      ),
    );
  }
}

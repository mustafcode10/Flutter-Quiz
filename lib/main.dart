
import 'package:flutter/material.dart';



import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s  your favorite color?',
      'answers': [
        {'text':'White', 'score': 5},
        {'text':'Red', 'score': 3},
        {'text': 'Black', 'score':10},
        {'text': 'Blue', 'score': 1}
         ]
    },
      {
      'questionText': 'What\'s  your favorite Animal?',
      'answers': [
        {'text':'Rabbit', 'score': 1},
        {'text':'Dog', 'score': 3},
        {'text': 'Snake', 'score':9},
        {'text': 'Lion', 'score': 8}
         ]
    },

    {
      'questionText': 'Who makes you laugh the most ?',
      'answers': [
        {'text':'Mustaf', 'score': 1},
        {'text':'Mustafa', 'score': 1},
        {'text': 'Mostapha', 'score':1},
        {'text': 'Mustapha', 'score': 1},
        ]
    },
    {
      'questionText': 'What\'s  your  favorite team ?',
      'answers': [
        {'text':'Chelsea', 'score': 1},
        {'text':'Man United', 'score': 10},
        {'text': 'Real Madrid', 'score':5},
        {'text': 'Barcelona', 'score': 8},

        ]
    },
    {
      'questionText': 'What\'s is your favorite Subject ?',
      'answers': [
        {'text':'Biology', 'score': 3},
        {'text':'Physics', 'score': 1},
        {'text': 'Math', 'score':9},
        {'text': 'Chemistry', 'score': 1},
        ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
   void resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      
    });
  }
  void _answerChosen(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
      print(_questionIndex);
    });
    if (_questionIndex < _questions.length) {
      print('we have More questions');
    } else {
      print('No more questions');
    }
  }
 


  @override
  Widget build(BuildContext context) {
    // 'what is your favorite color?',
    // 'What\'s is your favorite Subject',
    // 'whats is your  favorite team ?',
    // 'What\'s  makes you crazy ?',
    // 'whats your favotite song ?'

    return MaterialApp(
      title: 'Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to my page Mustaf'),
        ),
        body: Container(
            child: _questionIndex < _questions.length
                ? Quiz(questions: _questions, questionIndex: _questionIndex, answerChosen: _answerChosen)
                : Result(_totalScore, resetQuiz)
                  ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s  your favorite color?',
      'answers': ['Red', 'Blue', 'Black', 'White']
    },
    {
      'questionText': 'Who makes you laugh the most?',
      'answers': ['Mustaf', 'Mustafa', 'Mostapha', 'Mustapha']
    },
    {
      'questionText': 'What\'s  your  favorite team ?',
      'answers': ['Chelsea', 'Man United', 'Real Madrid', 'Barcelona']
    },
    {
      'questionText': 'What\'s is your favorite Subject',
      'answers': ['Math', 'Physics', 'Biology', 'Chemistry']
    },
  ];
  var _questionIndex = 0;
  void _answerChosen() {
    setState(() {
      _questionIndex += 1;
      print(_questionIndex);
    });
    if (_questionIndex < questions.length) {
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
            child: _questionIndex < questions.length
                ? Column(
                    children: [
                      Question(questions[_questionIndex]['questionText']),
                      ...(questions[_questionIndex]['answers'] as List<String>)
                          .map((answer) {
                        return Answer(_answerChosen, answer);
                      }).toList(),

                      //  Answer(_answerChosen),
                      //  Answer(_answerChosen),
                      //  Answer(_answerChosen),
                      // RaisedButton(
                      //   child: Text('Answer 1'),
                      //   onPressed: answerChosen),
                      // RaisedButton(
                      //   child: Text('Answer 2'),
                      //   onPressed: answerChosen),
                      // RaisedButton(
                      //   child: Text('Answer 3'),
                      //   onPressed: answerChosen),
                    ],
                  )
                : Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Center(
                          child: Image.network(
                              'https://scontent.famm6-1.fna.fbcdn.net/v/t1.0-9/88123663_2867214479988590_2183669726721343488_n.jpg?_nc_cat=108&_nc_sid=09cbfe&_nc_ohc=g-p7ntI04IUAX8Nnyfu&_nc_ht=scontent.famm6-1.fna&oh=d697aa3cd3e573aa9cea96e960fba516&oe=5F97B949'),
                        ),
                        Text(
                          'Thank you for answering!!',
                          style: TextStyle(fontSize: 28, color: Colors.black87),
                        )
                      ],
                    ),
                  )),
      ),
    );
  }
}

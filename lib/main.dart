import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerChosen() {
    print('answer is chosen');
  }

  @override
  Widget build(BuildContext context) {
  var questions = [
      'what is your favorite color?',
      'whats is your  favorite team ?',
    ];
    return MaterialApp(
      title: 'Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to my page Mustaf'),
        ),
        body: Container(
            child: Column(
          children: [
            Text('The questions!'),
            RaisedButton(
              child: Text('Answer 1'), 
              onPressed: answerChosen),
            RaisedButton(
              child: Text('Answer 2'), 
              onPressed: answerChosen),
            RaisedButton(
              child: Text('Answer 3'), 
              onPressed: answerChosen),
          ],
        )),
      ),
    );
  }
}

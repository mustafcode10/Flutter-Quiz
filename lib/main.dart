import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());



class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return  MyAppState();
  }

}
class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerChosen() {
    setState(() {
       questionIndex += 1;
    });
   
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
  var questions = [
      'what is your favorite color?',
      'Hi Mustaf, What\'s is your favorite Subject',
      'whats is your  favorite team ?',
      'What\'s  makes you crazy ?',
      'whats your favotite song ?'
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
           Question(questions[questionIndex]),
           Answer(answerChosen),
           Answer(answerChosen),
           Answer(answerChosen),
           

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
        )),
      ),
    );
  }
}

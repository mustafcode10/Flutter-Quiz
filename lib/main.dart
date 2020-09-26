import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());



class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return  _MyAppState();
  }

}
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerChosen() {
    setState(() {
       _questionIndex += 1;
    });
   
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
  var questions = [
    {
      'question':'What\'s  your favorite color?',
      'answers':['Red', 'Blue', 'Black', 'White']
    },
      {
      'question':'Who makes you laugh the most?',
      'answers':['Mustaf', 'Mustafa', 'Mostapha', 'Mustapha']
    },
       {
      'question':'What\'s  your  favorite team ?',
      'answers':['Chelsea', 'Man United', 'Real Madrid', 'Barcelona']
    },
      {
      'question':'What\'s is your favorite Subject',
      'answers':['Math', 'Physics', 'Biology', 'Chemistry']
    },
      {
      'question':'What\'s is your  favorite team ?',
      'answers':['Chelsea', 'Man United', 'Real Madrid', 'Barcelona']
    },
    
    
      // 'what is your favorite color?',
      // 'What\'s is your favorite Subject',
      // 'whats is your  favorite team ?',
      // 'What\'s  makes you crazy ?',
      // 'whats your favotite song ?'
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
           Question(questions[_questionIndex]['question']),
           ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
             return Answer(_answerChosen, answer);
           }),
           
          //  Answer(answerChosen),
          //  Answer(answerChosen),
          //  Answer(answerChosen),
           

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

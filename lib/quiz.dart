import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerChosen;
  Quiz({@required this.questions, @required this.questionIndex, @required this.answerChosen});

  @override
  Widget build(BuildContext context) {
    return  Column(
                    children: [
                      Question(questions[questionIndex]['questionText']),
                      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
                          .map((answer) {
                        return Answer(()=> answerChosen(answer['score']), answer['text']);
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
                  );
  }
}
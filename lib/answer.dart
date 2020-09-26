import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function selectHandler;
   String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     // color: Colors.blue,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: selectHandler, 
        color: Colors.blue,
        textColor: Colors.white,
        ),
      
    );
  }
}
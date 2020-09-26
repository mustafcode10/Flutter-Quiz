import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function selectHandler;
  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.blue,
      child: RaisedButton(
        child: Text('Answer'),
        onPressed: selectHandler,
        color: Colors.blue,
        ),
      
    );
  }
}
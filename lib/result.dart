

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get textPhrase {
    String resultText;
    if(resultScore <= 15){
      resultText = 'You are Awesome and Innocent!!';
    } else if(resultScore <= 23 ){
      resultText = ' Pretty likeable!'; 

    } else if(resultScore <= 26){
      resultText = 'You are ... strange?!';

    } else {
      resultText = 'You are so bad!';
    }
    return resultText;

  }
  @override
  Widget build(BuildContext context) {
    return  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    child: Column(
                      
                      children: [
                        Text(
                          textPhrase,
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                          ),
                        
                        Center(
                          child: Image.network(
                              'https://scontent.famm6-1.fna.fbcdn.net/v/t1.0-9/88123663_2867214479988590_2183669726721343488_n.jpg?_nc_cat=108&_nc_sid=09cbfe&_nc_ohc=g-p7ntI04IUAX8Nnyfu&_nc_ht=scontent.famm6-1.fna&oh=d697aa3cd3e573aa9cea96e960fba516&oe=5F97B949'),
                        ),
                        Text(
                          'Thank you for answering!!',
                          style: TextStyle(fontSize: 28, color: Colors.black87),
                        ),
                      
                        FlatButton(onPressed: resetHandler, child: Text(
                          'Reset Quiz!',
                      
                          ),
                          textColor: Colors.blue,
                          )
                      ],
                    ),
                  );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled36/main.dart';
import 'main.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30,color: isSwitched ==false? Colors.black:Colors.white ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

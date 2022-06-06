
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function function;

  Answer(this.function, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(

        child: Text(answerText,style: TextStyle(fontSize:25 )),
        onPressed: (){},
      ),
    );
  }
}

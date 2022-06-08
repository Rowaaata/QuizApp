
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
   final Function() x;

  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(vertical: 0,horizontal: 2),
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: ElevatedButton(
          child: Text(answerText,style: TextStyle(fontSize:25 )),
          onPressed: x,
        ),
      ),
    );
  }
}

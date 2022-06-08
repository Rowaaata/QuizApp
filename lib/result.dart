import 'package:flutter/material.dart';
import 'main.dart';
class Result extends StatelessWidget {
  final Function() q;
  final int resultScore;

  Result(this.q,this.resultScore);

  String get resultPhrase{
    String resultText;
    if(resultScore>=70){
      resultText="You are awesome !";

    }else if (resultScore>=40){
      resultText="Pretty likable!";
    }else{
      resultText="You are so bad!";
    }
    return resultText;

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
           resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: isSwitched ==false?Colors.black:Colors.white),
          ),
          TextButton(
              onPressed: q,
              child: Text(
                "Restart The App",
                style: TextStyle(fontSize: 30),
              )),
        ],
      ),
    );
  }
}

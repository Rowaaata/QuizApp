
import 'package:flutter/material.dart';
import 'package:untitled36/result.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionindex = 0;
  void answerQuestion(){
    setState(() {
      _questionindex+=1;
    });
    print(_questionindex);
    print("Answer chosen!");
  }

  final _question = [
    'What\' your favorite color?',
    'What\' your favorite animal?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Container(
          child: Column(
            children: [
              Question(_question[0]),
             Answer(answerQuestion, "Answer 1"),
              Answer(answerQuestion, "Answer 2"),
              Answer(answerQuestion, "Answer 3"),
            ],
          ),
        ),
      ),
    );
  }
}

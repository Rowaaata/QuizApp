import 'package:flutter/material.dart';
import 'package:untitled36/quiz.dart';
import 'package:untitled36/result.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool isSwitched=false;

class _MyAppState extends State<MyApp> {
  int _questionindex = 0;
  int _totalScore=0;

  void reset() {
    setState(() {
      _questionindex = 0;
      _totalScore=0;
      print("Done");
      print(_totalScore);
    });


  }

  void answerQuestion(int score) {

    setState(() {
      _questionindex += 1;
      _totalScore +=score;

    });
    print(_questionindex);
    print(_totalScore);

  }

  final List<Map<String, Object>> _question = [
    {
      'question text': 'What\' your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Black', 'score': 20},
        {'text': 'Red', 'score': 30},
        {'text': 'Orange', 'score': 40},
      ],
    },
    {
      'question text': 'What\' your favorite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Rabbit', 'score': 20},
        {'text': 'Lion', 'score': 30},
        {'text': 'Cow', 'score': 40},
      ],
    },
    {
      'question text': 'What \' your favourite fruit?',
      'answers': [
        {'text': 'Orange', 'score': 10},
        {'text': 'Apple', 'score': 20},
        {'text': 'Banana', 'score': 30},
        {'text': 'Mango', 'score': 40},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(

          title: Text("Quiz App",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: isSwitched == false? Colors.white:Colors.black),),
          actions: [
            Switch(value: isSwitched, onChanged:(value){
              setState(() {
                isSwitched=value;
              });


            },activeColor: Colors.white,inactiveThumbColor: Colors.black,inactiveTrackColor: Colors.black,)
          ],

        ),
        body: Container(
          color: isSwitched ==false? Colors.white:Colors.black,

            child: _questionindex < _question.length
                ? Quiz(_question, _questionindex, answerQuestion)
                : Result(reset,_totalScore)),
      ),
    );
  }
}

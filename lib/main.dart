import 'package:flutter/material.dart';
import 'package:guide/result.dart';
import './question.dart';
import './button.dart';
import './quiz.dart';
import './result.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;
  int totalScore = 0;
  var question = [
    {
      'Question': "what/' is ur favorite color",
      'ans': [
        {"text": "black", "score": 0},
        {"text": "blue", "score": 0},
        {"text": "red", "score": 0},
        {"text": "white", "score": 1}
      ]
    },
    {
      'Question': "what is ur favorite food ",
      "ans": [
        {"text": "apple", "score": 0},
        {"text": "banana", "score": 1},
        {"text": "orange", "score": 0},
        {"text": "none", "score": 1}
      ]
    }
  ];
  void action(int score) {
    totalScore = totalScore + score;
    print("your score" );
    print( totalScore);
    setState(() {
      index = index + 1;
    });
    totalScore = totalScore + score;
    print("button pressed ");
  }

  Widget build(BuildContext context) {
    if (index < question.length) {
      return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("my first quiz app"),
            ),
            body: quiz(action, question, index)),
      );
    } else {
      return result(totalScore);
    }
  }
}

void main() {
  runApp(MyApp());
}

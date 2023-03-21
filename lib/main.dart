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
  void action() {
    setState(() {
      index = index + 1;
    });

    print("button pressed ");
  }

  Widget build(BuildContext context) {
    var question = [
      {
        'Question': "what/' is ur favorite color",
        'ans': ["black", "blue", "red", "white"]
      },
      {
        'Question': "what is ur favorite food ",
        "ans": ["apple", "banana", "orange", "none"]
      }
    ];
    if (index < question.length) {
      return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("my first quiz app"),
            ),
            body: quiz(action, question, index)),
      );
    } else {
      return result();
    }
  }
}

void main() {
  runApp(MyApp());
}

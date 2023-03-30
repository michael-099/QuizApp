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
      'Question': "Which of the following is not a valid data type ",
      'ans': [
        {"text": "int", "score": 0},
        {"text": "double", "score": 0},
        {"text": " long", "score": 2},
        {"text": " String", "score": 0},
      ]
    },
    {
      'Question': "What does the final keyword in Dart mean?",
      'ans': [
        {
          "text":
              "The value of the variable cannot be changed after it is initialized",
          "score": 2
        },
        {
          "text":
              "The variable must be initialized with a value when it is declared",
          "score": 0
        },
        {
          "text":
              " The variable can only be used within the same file where it is declared",
          "score": 0
        },
        {"text": "The variable can be null", "score": 0},
      ]
    },
    {
      'Question':
          "What is the correct syntax for declaring a variable in Dart?",
      'ans': [
        {"text": "a) var variableName = value;", "score": 0},
        {"text": "b) int variableName = value;", "score": 0},
        {"text": "c) String variableName = value;", "score": 0},
        {"text": "d) All of the above", "score": 2},
      ]
    },
    {
      'Question': "Which of the following is not a valid data type in Dart?",
      'ans': [
        {"text": "a) int", "score": 0},
        {"text": "b) double", "score": 0},
        {"text": "c) float", "score": 2},
        {"text": "d) num", "score": 0},
      ]
    },
    {
      'Question':
          "What is the correct syntax for a conditional statement in Dart?",
      'ans': [
        {"text": "if(condition) { // code to execute };", "score": 2},
        {"text": "b) while(condition) { // code to execute };", "score": 0},
        {
          "text": "c) for(var i = 0; i < 10; i++) { // code to execute };",
          "score": 0
        },
        {
          "text":
              ") switch(variableName) { case value: // code to execute; break; }",
          "score": 0
        },
      ]
    },
    {
      'Question': "What is the correct way to declare a function in Dart",
      'ans': [
        {"text": "a) functionName() { // code to execute };", "score": 0},
        {"text": "b) void functionName() { // code to execute };", "score": 2},
        {"text": "c) functionName() => { // code to execute };", "score": 0},
        {"text": "d) None of the above", "score": 0},
      ]
    },
    {
      'Question': "What is the data type of the value 'hello world' in Dart?",
      'ans': [
        {"text": "A. int", "score": 0},
        {"text": "B. double", "score": 0},
        {"text": "C. bool", "score": 0},
        {"text": "D. String", "score": 2},
      ]
    },
    {
      'Question':
          "Which of the following is a valid way to declare a list in Dart?",
      'ans': [
        {"text": "A. [1, 2, 3, 4]", "score": 2},
        {"text": "B. (1, 2, 3, 4)", "score": 0},
        {"text": "C. {1, 2, 3, 4}", "score": 0},
        {"text": "D. <1, 2, 3, 4>", "score": 0},
      ]
    },
    {
      'Question':
          "What is the purpose of the 'async' and 'await' keywords in Dart?",
      'ans': [
        {"text": " To declare asynchronous functions", "score": 2},
        {"text": " To handle errors in asynchronous code", "score": 0},
        {"text": "To perform operations in parallel", "score": 0},
        {"text": "D. To define callback functions", "score": 0},
      ]
    },
  ];
  void action(int score) {
    totalScore = totalScore + score;
    print("your score");
    print(totalScore);
    setState(() {
      index = index + 1;
    });
    totalScore = totalScore + score;
    print("button pressed ");
  }

  resetApp() {
    setState(() {
      totalScore = 0;
      index = 0;
    });
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
      return result(totalScore, resetApp);
    }
  }
}

void main() {
  runApp(MyApp());
}

//  var question = [
  
    
//     {
//       'Question': "what/' is ur favorite color",
//       'ans': [
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//       ]
//     },
//     {
//       'Question': "what/' is ur favorite color",
//       'ans': [
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//       ]
//     },
//     {
//       'Question': "what/' is ur favorite color",
//       'ans': [
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//       ]
//     },
//     {
//       'Question': "what/' is ur favorite color",
//       'ans': [
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//       ]
//     },
//     {
//       'Question': "what/' is ur favorite color",
//       'ans': [
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//       ]
//     },
//     {
//       'Question': "what/' is ur favorite color",
//       'ans': [
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//       ]
//     },
//     {
//       'Question': "what/' is ur favorite color",
//       'ans': [
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//       ]
//     },
//      {
//       'Question': "what/' is ur favorite color",
//       'ans': [
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//         {"text": , "score": 0},
//       ]
//     },
    
    

    
//   ];
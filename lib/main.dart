import 'package:flutter/material.dart';
import './question.dart';
import './button.dart';
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}
  class MyAppState extends State<MyApp> {var index = 0;
  void action(){
    setState(() {
       index = index + 1;
    });
   
    print("button pressed " );
  }
  Widget build(BuildContext context){
    var question =[ {'question':"what/' is ur favorite color"} ,{'question':"what is ur favorite food "}];
  return MaterialApp(
    home: Scaffold( 
      appBar:AppBar( title: Text("my first quiz app"),
      ),
    body: Column(children: [
      Question(question[index][question]),
      
     
     
     
     button ('answer 1',action),
     button ('answer 2',action),
     button ('answer 3',action),
     
      ],
      ),
  ),
  );
}
}
void main(){
  runApp(MyApp());
}
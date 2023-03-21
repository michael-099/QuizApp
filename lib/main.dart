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
    var question =[ {'Question':"what/' is ur favorite color",'ans':["black","blue","red","white"]} ,{'Question':"what is ur favorite food " ,"ans":["apple" ,"banana","orange" ,"none" ] }];
  return MaterialApp(
    home: Scaffold( 
      appBar:AppBar( title: Text("my first quiz app"),
      ),
    body: Column(children: [
      Question(question[index]["Question"]),
      ...(question[index]["ans"] as List<String>).map((forEachElementOfAns){
        return button(forEachElementOfAns,action);
        
      }).toList()
    //  button ('answer 1',action),
    //  button ('answer 2',action),
    //  button ('answer 3',action),
     
      ],
      ),
  ),
  );
}
}
void main(){
  runApp(MyApp());
}
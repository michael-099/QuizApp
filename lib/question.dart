import 'package:flutter/material.dart';
class Question extends StatelessWidget{
 String qtext;
Question(this.qtext);

  Widget build(BuildContext context){
    return Text(qtext);

  }
 
}
import "package:flutter/material.dart";
class button extends StatelessWidget{
  String text;
  Function function;
  button(this.text,this.function);
  Widget build(BuildContext contexst) {
    return ElevatedButton(child:Text(text) ,onPressed:function );
  }
  
}

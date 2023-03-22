import "package:flutter/material.dart";

class result extends StatelessWidget {
  int value;
  result(this.value);
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Score"),
        ),
        body: Center(child: Text('your score is $value ')),
      ),
    );
  }
}

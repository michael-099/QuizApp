import "package:flutter/material.dart";

class result extends StatelessWidget {
  int value;
  Function retake;
  result(this.value,this.retake);
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Score"),
        ),
        body: Center(
          child: (Column(
            children: [
              Text('your score is $value '),
              TextButton(child: Text("retake") ,onPressed: retake)
            ],
          )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'button.dart';
import 'question.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int index;
  final Function action;
  @override
  quiz(this.action, this.question, this.index);
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[index]["Question"]),
        ...(question[index]["ans"] as List<String>).map((forEachElementOfAns) {
          return button(forEachElementOfAns, action);
        }).toList()
      ],
    );
  }
}

import "package:flutter/material.dart";

class button extends StatelessWidget {
  String text;
  Function function;
  button(this.text, this.function);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(text),
        onPressed: function,
      ),
    );
  }
}

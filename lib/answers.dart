import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          // Button Collor
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green[600]),
          // Button content color
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Text(answerText),
        onPressed: selectHandler, // passing funcion's pointer
      ),
    );
  }
}

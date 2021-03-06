import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;

    if (resultScore <= 8) {
      resultText = 'You are AWESOME!';
    } else if (resultScore > 8 && resultScore <= 12) {
      resultText = 'You are LIKABLE';
    } else if (resultScore > 12 && resultScore <= 16) {
      resultText = 'You are... STRANGE';
    } else {
      resultText = 'You are BAD';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz!',
              style: TextStyle(color: Colors.amber[600]),
            ),
          )
        ],
      ),
    );
  }
}

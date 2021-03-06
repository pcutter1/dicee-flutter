import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  var leftTotal = 0;
  var rightTotal = 0;

  void rollEm() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      leftTotal += leftDiceNumber;
      rightDiceNumber = Random().nextInt(6) + 1;
      rightTotal += rightDiceNumber;
    });
  }

  void resetCount() {
    setState(() {
      leftDiceNumber = 1;
      leftTotal = 0;
      rightDiceNumber = 1;
      rightTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                rollEm();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
               rollEm();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}




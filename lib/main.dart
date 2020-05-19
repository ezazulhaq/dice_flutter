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
  var leftImageClick = 1;
  var rightImageClick = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftImageClick = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("images/dice$leftImageClick.png"),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightImageClick = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("images/dice$rightImageClick.png"),
            ),
          ),
        ],
      ),
    );
  }
}
/*
class DicePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {},
              child: Image.asset("images/dice1.png"),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {},
              child: Image.asset("images/dice1.png"),
            ),
          ),
        ],
      ),
    );
  }
}
*/

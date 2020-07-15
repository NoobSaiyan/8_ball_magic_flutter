import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            '8 Ball',
            style: TextStyle(color: Colors.grey.shade600),
          ),
          backgroundColor: Colors.grey.shade100,
        ),
        body: Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ans = 1;

  void changeState() {
    setState(() {
      ans = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          changeState();
        },
        child: Image.asset('images/ball$ans.png'),
      ),
    );
  }
}

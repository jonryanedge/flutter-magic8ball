import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Say What?'),
          backgroundColor: Colors.brown,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNo = 1;

  void askQuestion() {
    setState(() {
      ballNo = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Image.asset('images/ball$ballNo.png'),
        ),
        FlatButton(
          onPressed: () {
            askQuestion();
          },
          child: Center(
            child: Text('Ask the app!'),
          ),
        ),
      ],
    );
  }
}


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}


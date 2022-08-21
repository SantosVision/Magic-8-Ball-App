import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.blue.shade400,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Center(
            child: Text('Ask Me Anything'),
          ),
        ),
        body: MagicBall(),
      )),
    );

class MagicBall extends StatefulWidget {
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballface = 1;
  @override
  Widget build(BuildContext context) {
    void changeballface() {
      setState(
        () {
          ballface = Random().nextInt(5) + 1;
        },
      );
    }

    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeballface();
              },
              child: Image(
                image: AssetImage('images/ball$ballface.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

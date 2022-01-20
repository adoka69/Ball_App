import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Ask Me Anything', style: TextStyle(
          fontSize: 30.0,),),
      ),
      body: ball_app(),
    ),
  ));
}
class ball_app extends StatefulWidget {
@override
_Ball_AppState createState() => _Ball_AppState();
}

class _Ball_AppState extends State<ball_app> {
  int BallNumber = 1;
  void onChanged() {
    setState(() {
      var random = new Random();
      BallNumber = random.nextInt(5) + 1; // 1 to six

    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
              child: FlatButton(
                onPressed: () {
                  onChanged();
                },
                child: Image.asset('assets/ball$BallNumber.png'),
              ),
            ),
    );
  }
}

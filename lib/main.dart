import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }


  Expanded buildApp({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color : color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children :[
              buildApp(color: Colors.red,soundNumber:1),
              buildApp(color: Colors.orange,soundNumber:2),
              buildApp(color: Colors.yellow,soundNumber:3),
              buildApp(color: Colors.green,soundNumber:4),
              buildApp(color: Colors.teal,soundNumber:5),
              buildApp(color: Colors.blue,soundNumber:6),
              buildApp(color: Colors.purple,soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    // add it to your class as a static member
    final AudioCache player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
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
            children: [
              buildKey(soundNumber: 1, color: Colors.yellow),
              buildKey(soundNumber: 2, color: Colors.blueGrey),
              buildKey(soundNumber: 3, color: Colors.deepPurple),
              buildKey(soundNumber: 4, color: Colors.teal),
              buildKey(soundNumber: 5, color: Colors.cyan),
              buildKey(soundNumber: 6, color: Colors.red),
              buildKey(soundNumber: 7, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}

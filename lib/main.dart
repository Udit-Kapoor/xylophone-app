import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget button(Color col, int num) {
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          final player = new AudioCache();
          player.play('note$num.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            button(Colors.red, 1),
            button(Colors.orange, 2),
            button(Colors.yellow, 3),
            button(Colors.green, 4),
            button(Colors.blue, 5),
            button(Colors.indigo, 6),
            button(Colors.purple, 7)
          ],
        )),
      ),
    );
  }
}

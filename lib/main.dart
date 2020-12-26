import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int noteNumber) {
    //A final's value cannot be changed
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded BuildKey(Color color, int keyNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          PlaySound(keyNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(Colors.deepPurple, 1),
              BuildKey(Colors.indigo, 2),
              BuildKey(Colors.blue, 3),
              BuildKey(Colors.green, 4),
              BuildKey(Colors.yellow, 5),
              BuildKey(Colors.orange, 6),
              BuildKey(Colors.red, 7),
            ],
          ),
        ),
      ),
    );
  }
}

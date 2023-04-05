import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XyloApp());

class xylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(soundNumber: 1, color: Colors.red),
            buildKey(soundNumber: 2, color: Colors.orange),
            buildKey(soundNumber: 3, color: Colors.yellow),
            buildKey(soundNumber: 4, color: Colors.green),
            buildKey(soundNumber: 5, color: Colors.teal),
            buildKey(soundNumber: 6, color: Colors.blue),
            buildKey(soundNumber: 7, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}


void main() => runApp(XyloApp());

class XyloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {

    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(soundNumber: 1, color: Colors.red),
            buildKey(soundNumber: 2, color: Colors.orange),
            buildKey(soundNumber: 3, color: Colors.yellow),
            buildKey(soundNumber: 4, color: Colors.green),
            buildKey(soundNumber: 5, color: Colors.teal),
            buildKey(soundNumber: 6, color: Colors.blue),
            buildKey(soundNumber: 7, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}

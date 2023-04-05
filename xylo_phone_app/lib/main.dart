import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


void main() => runApp(XyloApp());

class xylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {

    final player = AudioCache();
    player.play('assets.note1.wav');
  }

  Expanded buildKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: () {
          playSound(soundNumber);
        }, child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,

        title: Text(
            'xylo phone app',
          style:
          TextStyle(
          fontSize: 40.0,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        ),
        ),



      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey( color: Colors.red,soundNumber: 1, ),
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

class AudioCache {
  void play(String s) {}
}




class XyloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Xylophone(),
    );
  }
}

class xylophone extends StatelessWidget {
  get player => null;

  void playSound(int soundNumber) {

    player.play('assets_note1.wav');
  }

  Expanded buildKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: () {
          playSound(soundNumber);
        }, child: null,
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

import 'package:flutter/material.dart';
import 'package:table_app/secreen2.dart';

class Secreen1 extends StatefulWidget {
  const Secreen1({super.key});

  @override
  State<Secreen1> createState() => _Secreen1State();
}

class _Secreen1State extends State<Secreen1> {
  int _table = 10, start = 4, end = 14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Table App',
            style: TextStyle(color: Colors.white),
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, top: 30, right: 30),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Table Number:  $_table',
              style: const TextStyle(color: Colors.orange),
            ),
            Slider(
              value: _table.toDouble(),
              min: 0,
              max: 100,
              onChanged: (double value) {
                setState(() {
                  _table = value.toInt();
                });
              },
            ),
            Text(
              'Select starting point:  $start',
              style: const TextStyle(color: Colors.orange),
            ),
            Slider(
              value: start.toDouble(),
              min: 0,
              max: 100,
              onChanged: (double value) {
                setState(() {
                  start = value.toInt();
                });
              },
            ),
            Text(
              'Select ending point:  $end',
              style: const TextStyle(color: Colors.orange),
            ),
            Slider(
              value: end.toDouble(),
              min: 0,
              max: 100,
              onChanged: (double value) {
                setState(() {
                  end = value.toInt();
                });
              },
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Secreen2(
                              table: _table,
                              start: start,
                              end: end,
                            )));
                  },
                  child: const Text(
                    'Generate Table',
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

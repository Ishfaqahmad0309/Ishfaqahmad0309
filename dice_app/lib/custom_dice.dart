import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Customdiceapp());
}

class Customdiceapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Dice App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int numberOfDice = 1;
  List<int> diceValues = [1];
  int sum = 1;

  final textFieldController = TextEditingController();

  void rollDice() {
    int newSum = 0;
    List<int> newDiceValues = [];

    for (int i = 0; i < numberOfDice; i++) {
      int value = Random().nextInt(6) + 1;
      newDiceValues.add(value);
      newSum += value;
    }

    setState(() {
      diceValues = newDiceValues;
      sum = newSum;
    });
  }

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('Custom Dice App'),
        backgroundColor: Colors.black,


      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Roll the Dice!',
              style: TextStyle(fontSize: 24,
              fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      numberOfDice = 1;
                      diceValues = [1];
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: Text('One Dice'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      numberOfDice = 2;
                      diceValues = [2, 4];
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),

                  child: Text('Two Dice'),

                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: ()

                  {
                    setState(() {
                      numberOfDice = 3;
                      diceValues = [1, 1, 1];
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: Text('Three Dice'),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: textFieldController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Number of Dice',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                setState(() {
                  numberOfDice = int.tryParse(text) ?? 1;
                  diceValues = List.generate(numberOfDice, (index) => 1);
                });
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int diceValue in diceValues)
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        '$diceValue',
                        style: TextStyle(fontSize: 36),
                       
                      ),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                  ),
              ],
            ),
            SizedBox(height: 20
            ),
            ElevatedButton(
              onPressed: rollDice,
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}

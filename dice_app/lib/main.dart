import 'dart:math';

import 'package:flutter/material.dart';
void main() => runApp(DiceApp());

class MyRaisedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const MyRaisedButton({Key? key, required this.onPressed, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      color: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<int> _animation;
  int _diceValue = 1;
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = IntTween(begin: 1, end: 6).animate(_animationController)
      ..addListener(() {
        setState(() {
          _diceValue = _animation.value;
        });
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _textController.dispose();
    super.dispose();
  }

  void _rollDice() {
    _animationController.reset();
    _animationController.forward();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final sides = int.parse(_textController.text);
      setState(() {
        _diceValue = Random().nextInt(sides) + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _animationController.value * pi * 2,
                  child: Image.asset(
                    'assets/images/dice$_diceValue.png',
                    height: 150,
                    width: 150,
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: _textController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a number';
                    }
                    final intValue = int.tryParse(value);
                    if (intValue == null || intValue < 2) {
                      return 'Please enter a valid number greater than 1';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Number of sides',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            MyRaisedButton(
              label: 'Roll the dice!',
              onPressed: _rollDice,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'multiple_choice_quiz_page.dart';
import 'true_false_quiz_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',

      home: QuizHomePage(),
    );
  }
}

class QuizHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('True/False Questions'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => TrueFalseQuizPage()));
              },
            ),
            ListTile(
              title: Text('Multiple Choice Questions'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => MultipleChoiceQuizPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
    child: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/two.jpg'), // Set background image here
    fit: BoxFit.cover,
    ),
    ),// Set background color here

    ), // Set background color here
    ));
  }
}



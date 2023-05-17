import 'package:flutter/material.dart';
import 'package:table_app/Secreen1.dart';



class SplashScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
          primarySwatch: Colors.orange),
      home: SplashScreen(),
      routes: {
        '/screen1': (context) => Secreen1(),
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table generater',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        new Container(
        child: new Image.asset(
          'assets/images/cal.png',
          height: 200.0,
          width: 200.0,
          fit: BoxFit.cover,
        ),
          
        ),

           Container(
               child: Center(
                 child: ElevatedButton(
                   child: Text('Table Generater'),
                   style: ElevatedButton.styleFrom(
                     primary: Colors.orange,
                     // side: BorderSide(color: Colors.yellow, width: 5),
                     textStyle: const TextStyle(
                         color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                     shape: BeveledRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(15))),
                     shadowColor: Colors.lightBlue,
                   ),
                   onPressed: () => Navigator.of(context)
                       .push(MaterialPageRoute(builder: (context) => const Secreen1())),
                 ),
               )
            ),
      ]
    )
    ),
    );
}
}


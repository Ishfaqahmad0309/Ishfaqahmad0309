import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: ' Counter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(
      ),

    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> counters = [0, 0, 0 ,0]; // initialize 3 counters with value 0
  int selectedCounterIndex = 0;// start with the first counter selected
  void showSnackBarMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),

    );
  }
  void incrementCounter(int index) {
    setState(() {
      counters[index]++;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(' incrementedCounter!'),

      ),
    );
  }

  void decrementCounter(int index) {
    setState(() {
      counters[index]--;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('decrementedCounter!'),
        duration: Duration(seconds: 3),
      ),
    );
  }
  void countzero(int index) {
    setState(() {
      counters[index]--;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Count 0!'),

      ),
    );
  }
  void resetCounter(int index) {
    setState(() {
      counters[index] = 0;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('resetCounter!'),

      ),
    );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Counter Application',
        ),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < counters.length; i++)
                ElevatedButton(
                  onPressed: () {

                    setState(() {
                      selectedCounterIndex = i;
                    });
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (i == selectedCounterIndex) {
                          return Colors.red; // highlight the selected counter
                        }
                        return Colors.black;
                      },
                    ),
                  ),
                  child: Text('Counter $i'),
                ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'Counter $selectedCounterIndex: ${counters[selectedCounterIndex]}',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              ElevatedButton(
                onPressed: () {
                  incrementCounter(selectedCounterIndex);
                },
                child: const Text('increment'),
              ),
              ElevatedButton(
                onPressed: () {
                  decrementCounter(selectedCounterIndex);
                },
                child: const Text('decrement'),
              ),
              ElevatedButton(
                onPressed: () {
                  resetCounter(selectedCounterIndex);
                },
                child: const Text('Reset'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

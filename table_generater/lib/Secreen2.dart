import 'package:flutter/material.dart';
import 'package:table_app/secreen3.dart';

class Secreen2 extends StatefulWidget {
  const Secreen2(
      {super.key, required this.end, required this.start, required this.table});
  final int table, start, end;

  @override
  State<Secreen2> createState() => _Secreen2State();
}

class _Secreen2State extends State<Secreen2> {
  @override
  Widget build(BuildContext context) {
    int length = widget.end - widget.start;
    return Scaffold(
      appBar: AppBar(title: Text('Tabel of ${widget.table}')),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: MediaQuery.of(context).size.height * 0.75,
              child: Expanded(

                child: ListView.builder(

                    itemCount: length + 1,
                    itemBuilder: (context, index) {
                      return Text(
                        '${widget.table}   * ${widget.start + index} = ${widget.table * (widget.start + index)} ',
                        style:
                        const TextStyle(color: Colors.orange, fontSize: 20),
                      );
                    }),
              ),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Secreen3(
                              table: widget.table,
                              start: widget.start,
                              end: widget.end,
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

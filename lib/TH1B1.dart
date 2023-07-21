import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Counter(),
    );
  }
}

class Counter extends StatefulWidget {

  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lớp thương mại điện tử'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(width: 16),
          Expanded(
            child: Container(),
          ),
          const Text('Số lần bấm nút + là:'),
          Text('$_counter',
              style: TextStyle(fontSize: 34),),
          Expanded(
            child: Container(),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20.0, right: 20.0),
            child: Align( //height of button
              alignment: Alignment.bottomRight, //width of button
              child: ElevatedButton(
                onPressed: _increment,
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(), //<-- SEE HERE
                  padding: EdgeInsets.all(20),
                  backgroundColor: Colors.pink,
                ),
                child: const Icon(Icons.add,),

              ),
            ),
          ),
        ],
        ),
      ),
    );
  }
}


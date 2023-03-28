import 'dart:async';
import 'package:flutter/material.dart';

class stopwatch extends StatefulWidget {
  @override
  State<stopwatch> createState() => _stopwatchState();
}

class _stopwatchState extends State<stopwatch> {
  Stopwatch stopwatch = Stopwatch();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (Timer t) => setState(() {}));
    stopwatch.start();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('stopwatch'),
      ),
      body: stopwatchPage(),
    );
  }

  stopwatchPage() {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'stopwatch',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'Time Spent',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${stopwatch.elapsed.inSeconds}',
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}

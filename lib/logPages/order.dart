import 'dart:async';

import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  final Stopwatch stopwatch = Stopwatch();

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (Timer t) => setState(() {}));
    stopwatch.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
      ),
      body: OrderPage(),
    );
  }

  Widget OrderPage() {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Order',
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
              '${stopwatch.elapsed} : ${stopwatch.elapsed.inHours} : ${stopwatch.elapsed.inMinutes} : ${stopwatch.elapsed.inSeconds}',
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}

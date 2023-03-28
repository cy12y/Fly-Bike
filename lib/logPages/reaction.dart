import 'package:flutter/material.dart';

class Reaction extends StatelessWidget {
  const Reaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: Container(
        height: double.infinity,
        child: Image.asset(
          "lib/images/IMG_9881.JPG",
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}

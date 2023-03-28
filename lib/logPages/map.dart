import 'package:flutter/material.dart';

import '../theme.dart';

class Map extends StatelessWidget {
  const Map({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: shimmerBaseColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('Map'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'SCOOTER',
                style: TextStyle(
                    color: secondaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

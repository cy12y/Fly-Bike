import 'package:flutter/material.dart';
import 'package:screeen1/pages/details/profile_screen.dart';
import 'package:screeen1/pages/home_body.dart';
import 'package:screeen1/theme.dart';

import 'details/profile_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  HomeScreen get context => HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: mainColor,
        elevation: 0,
        title: const Text(" Welcome to FlyBikes store ",
            style: TextStyle(fontSize: 18)),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProfileScreen()));
              },
              icon: const Icon(
                Icons.menu,
              ))
        ],
      ),
      body: const HomeBody(),
    );
  }
}

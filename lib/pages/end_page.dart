import 'package:flutter/material.dart';
import 'package:screeen1/pages/details/profile_screen.dart';
import 'package:screeen1/pages/home_screen.dart';

import '../theme.dart';

class EndPage extends StatelessWidget {
  const EndPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: detailsAppBar(context),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: const Center(
          child: const Text(
            'Thank you, have a good day',
            style: TextStyle(fontSize: 30, color: mainColor),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: 1,
          backgroundColor: mainColor,
          onTap: (int a) {
            if (a == 0) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return HomeScreen();
              }));
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ProfileScreen();
              }));
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
    );
  }
}

AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: mainColor,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      color: Colors.white,
      onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      },
    ),
    centerTitle: true,
    title: const Text(
      'FlyBikes',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  );
}

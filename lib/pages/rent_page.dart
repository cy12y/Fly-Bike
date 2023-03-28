import 'package:flutter/material.dart';
import 'package:screeen1/pages/trip_page.dart';

import '../theme.dart';

class RentingPage extends StatefulWidget {
  const RentingPage({required this.name, super.key});
  final String name;
  @override
  State<RentingPage> createState() => _RentingPageState();
}

class _RentingPageState extends State<RentingPage> {
  get name => null;

  @override
  Widget build(BuildContext context) {
    TextEditingController _TEC = TextEditingController();
    return RentingPageBody(context, _TEC);
  }

  Scaffold RentingPageBody(BuildContext context, TextEditingController _TEC) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: detailsAppBar(context),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              // border: OutlineInputBorder(
              //           borderSide: BorderSide(width: 10, color: Colors.white,

              //           )),
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    //border color white

                    //iconColor: secondaryColor,
                    prefixStyle: const TextStyle(color: secondaryColor),
                    labelStyle: const TextStyle(color: secondaryColor),
                    labelText: 'Renting station',
                    prefixText: "${widget.name}"),
                readOnly: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  //border color white

                  //iconColor: secondaryColor,
                  prefixStyle: TextStyle(color: secondaryColor),
                  labelStyle: TextStyle(color: secondaryColor),
                  labelText: 'Enter scooter number',
                  //prefixText: "${widget.name}"),
                  //readOnly: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Center(
                child: Container(
                  height: 50,
                  width: 450,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                    ),
                    child: const Text(
                      'Unlock scooter',
                      style: TextStyle(color: mainColor, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => TripPage())));
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: secondaryColor,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      color: Colors.black,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    centerTitle: false,
    title: const Text(
      'Back',
      style: TextStyle(fontSize: 18, color: Colors.black),
    ),
  );
}

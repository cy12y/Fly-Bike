import 'dart:async';

import 'package:flutter/material.dart';

import '../logPages/pay.dart';
import '../theme.dart';

class TripPage extends StatefulWidget {
  const TripPage({super.key});
  @override
  State<TripPage> createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  Stopwatch stopwatch = Stopwatch();
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (Timer t) => setState(() {}));
    stopwatch.start();
  }

  @override
  Widget build(BuildContext context) {
    stopwatch.start();
    return Scaffold(
        appBar: detailsAppBar(context),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Column(children: [
                    Container(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 70.0),
                            child: Text("Hours :",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: mainColor,
                                  boxShadow: const [
                                    BoxShadow(
                                        offset: Offset(0, 15),
                                        blurRadius: 25,
                                        color: Colors.black26),
                                  ]),
                              height: 70,
                              width: 180,
                              child: Center(
                                  child: Text(
                                "${stopwatch.elapsed.inHours}",
                                style: const TextStyle(
                                    fontSize: 40, color: Colors.white),
                              ))),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 70.0),
                            child: Text("minutes :",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: mainColor,
                                  boxShadow: const [
                                    BoxShadow(
                                        offset: Offset(0, 15),
                                        blurRadius: 25,
                                        color: Colors.black26),
                                  ]),
                              height: 70,
                              width: 180,
                              child: Center(
                                  child: Text(
                                "${stopwatch.elapsed.inMinutes}",
                                style: const TextStyle(
                                    fontSize: 40, color: Colors.white),
                              ))),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 70.0),
                            child: Text("second :",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: mainColor,
                                  boxShadow: const [
                                    BoxShadow(
                                        offset: Offset(0, 15),
                                        blurRadius: 25,
                                        color: Colors.black26),
                                  ]),
                              height: 70,
                              width: 180,
                              child: Center(
                                  child: Text(
                                "${stopwatch.elapsed.inSeconds}",
                                style: const TextStyle(
                                    fontSize: 40, color: Colors.white),
                              ))),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      height: 50,
                      width: 400,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: mainColor,
                        ),
                        child: const Text(
                          'Finish the trip',
                          style: TextStyle(color: secondaryColor, fontSize: 20),
                        ),
                        onPressed: () {
                          stopwatch.stop();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PayInformation(
                                        m: stopwatch.elapsed.inMinutes,
                                        h: stopwatch.elapsed.inHours,
                                      )));
                        },
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}

AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: mainColor,
    centerTitle: true,
    automaticallyImplyLeading: false,
    title: const Text(
      'your trip information',
      style: TextStyle(fontSize: 22, color: Colors.white),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:screeen1/pages/end_page.dart';
import 'package:screeen1/theme.dart';

class PayInformation extends StatelessWidget {
  PayInformation({required this.h, required this.m, super.key});
  String? name;
  int m, h;
  @override
  Widget build(BuildContext context) {
    m += h * 60;
    m += 2;
    double pr = m * 0.60;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: mainColor,
        title: const Text('Payment Information'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    leading: Icon(Icons.location_on),
                    title: Text('Location'),
                    subtitle: Text('Computer Science College'),
                  ),
                  const SizedBox(height: 10),
                  const ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    leading: Icon(Icons.calendar_month),
                    title: Text('Date'),
                    subtitle: Text('10/1/2023'),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    leading: Icon(Icons.timer),
                    title: const Text('Time'),
                    subtitle: Text("${m}"),
                  ),
                  const SizedBox(height: 10),
                  const ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    leading: Icon(Icons.attach_money),
                    title: Text('Price/Minute'),
                    subtitle: Text('0.60 SR'),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    leading: const Icon(Icons.attach_money),
                    title: const Text('Total price'),
                    subtitle: Text("${pr} SR"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 55,
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.black),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                onPressed: () {},
                icon: const Icon(Icons.apple),
                label: const Text("Pay with Apple Pay"),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'OR',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name on Card',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Card Number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Expiration Date',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CVV',
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(mainColor)),
                child: const Text('Submit'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const EndPage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:screeen1/logPages/reaction.dart';
import 'package:screeen1/pages/rent_page.dart';
import 'package:screeen1/theme.dart';
import 'package:flutter/material.dart';
import 'signup.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({required this.name, super.key});
  TextEditingController myController = TextEditingController();
  TextEditingController myController1 = TextEditingController();
  String name;

  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    myController1.dispose();
    //super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: shimmerBaseColor,

      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('Login'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 140,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'FlyBikes',
                style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                //key: Key('username'),
                controller: myController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                obscureText: true,
                controller: myController1,
                key: const Key('password'),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                ),
                child: const Text('Login'),
                onPressed: () {
                  if (myController.text.isEmpty || myController1.text.isEmpty) {
                    final snackBar = const SnackBar(
                      content: Text('Please enter your username and password'),
                      // action: SnackBarAction(
                      //   label: 'Undo',
                      //   onPressed: () {
                      //     // Some code to undo the change.
                      //   },
                      // ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RentingPage(
                                  name: name,
                                )));
                  }
                  ;
                },
              ),
            ),
            TextButton(
              onPressed: () {},
              //textColor: Colors.blue,
              child: const Text('Forgot Password',
                  style: TextStyle(color: mainColor, fontSize: 14)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Register',
                    style: TextStyle(color: mainColor, fontSize: 14),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

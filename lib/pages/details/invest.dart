import 'package:screeen1/pages/home_screen.dart';
import 'package:screeen1/theme.dart';
import 'package:flutter/material.dart';

class Invest extends StatelessWidget {
  Invest({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: shimmerBaseColor,

      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('Invest with us'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 80,
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
            // Container(
            //   alignment: Alignment.center,
            //   padding: const EdgeInsets.all(10),
            //   child: const Text(
            //     'Login',
            //     style: TextStyle(fontSize: 20),
            //   ),
            // ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'your name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'you phone number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Scooter model',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Scooter brand',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'your notes and reguirement',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 15),
              child: Text(
                "please send your scooter picture to this email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 120),
              child: Text(
                "' FlyPikes@gmail.com '",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                    ),
                    child: const Text('Invest'),
                    onPressed: () {
                      final snackBar = const SnackBar(
                        content: Text(
                            'we will review the information and call you back'),
                        // action: SnackBarAction(
                        //   label: 'Undo',
                        //   onPressed: () {
                        //     // Some code to undo the change.
                        //   },
                        // ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => HomeScreen()
                                  // DetailsScreen(
                                  //       product: pro,
                                  //     )
                                  )));
                    } //{
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => RentingPage(
                    //                 //name: name,
                    //               )));
                    // },
                    ),
              ),
            ),
            // TextButton(
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => const Reaction()));
            //   },
            //   //textColor: Colors.blue,
            //   child: const Text('Forgot Password',
            //       style: TextStyle(color: mainColor, fontSize: 14)),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     const Text('Does not have account?'),
            //     TextButton(
            //         child: const Text(
            //           'Register',
            //           style: TextStyle(color: mainColor, fontSize: 14),
            //         ),
            //         onPressed: () {}
            //         //   Navigator.push(context,
            //         //       MaterialPageRoute(builder: (context) => SignupPage()));
            //         // },
            //         )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}

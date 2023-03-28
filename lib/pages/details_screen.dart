import 'package:flutter/material.dart';
import 'package:screeen1/logPages/login.dart';
import 'package:screeen1/main.dart';
import 'package:screeen1/pages/details/details_body.dart';
import 'package:screeen1/theme.dart';

import '../models/items.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Items product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: detailsAppBar(context),
      body: DetailesBody(
        product: product,
      ),
      // bottomNavigationBar: Material(
      //     color: mainColor,
      //     child: InkWell(
      //         onTap: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                   builder: ((context) => Login(name: product.name))));
      //         },
      //         child: const SizedBox(
      //           height: 100,
      //           width: double.infinity,
      //           child: Center(
      //             child: Text(
      //               'Rent',
      //               style: TextStyle(fontSize: 20, color: secondaryColor),
      //             ),
      //           ),
      //         ))),
    );
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
}

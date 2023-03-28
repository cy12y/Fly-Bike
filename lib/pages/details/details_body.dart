import 'package:flutter/material.dart';
import 'package:screeen1/logPages/login.dart';
import 'package:screeen1/models/items.dart';
import 'package:screeen1/pages/details/product_image.dart';
import 'package:screeen1/theme.dart';

class DetailesBody extends StatelessWidget {
  const DetailesBody({super.key, required this.product});

  final Items product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.locMap,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 7.5),
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(boxShadow: [
                  // BoxShadow(
                  //     offset: Offset(10, 20),
                  //     blurRadius: 30,
                  //     color: Colors.black26)
                ]),
                child: Center(
                  child: Text(
                    "avalible is : ${product.avalible}",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 80, 77, 77)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              "Price : 0.60 per minute",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        // const Center(
        //   child: Text(
        //     "Location: ",
        //     style: TextStyle(
        //         fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(top: 180),
          child: Center(
            child: Container(
              height: 50,
              width: 400,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                ),
                child: const Text(
                  'Rent',
                  style: TextStyle(color: mainColor, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => Login(name: product.name))));
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

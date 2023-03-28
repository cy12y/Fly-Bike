import 'package:flutter/material.dart';

import '../models/items.dart';
import '../theme.dart';
import 'details_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.pro,
    required this.itemIndex,
    //required this.press,
  }) : super(key: key);
  final int itemIndex;
  final Items pro;
  //final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 0.0,
      ),
      height: 190,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => DetailsScreen(
                        product: pro,
                      ))));
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 120.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 25,
                        color: Colors.black26),
                  ]),
            ),
            Positioned(
                top: 40.0,
                left: 0.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 120,
                  width: 190,
                  child: Image.asset(
                    pro.image,
                    fit: BoxFit.fitWidth,
                  ),
                )),
            Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  height: 145,
                  width: size.width - 200,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 140,
                          height: 40,
                        ),
                        //   child: ListView(
                        //     scrollDirection: Axis.vertical,
                        //     children: [
                        //       Padding(
                        //         padding: const EdgeInsets.only(
                        //             top: 5, left: 8, right: 8),
                        //         child: Container(
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 10, vertical: 3),
                        //           decoration: BoxDecoration(
                        //             color: secondaryColor,
                        //             borderRadius: BorderRadius.circular(22),
                        //           ),
                        //           child: Center(
                        //             child: Text(
                        //               "   avalible :  ${pro.avalible}   ",
                        //               style: const TextStyle(
                        //                   fontSize: 14,
                        //                   fontWeight: FontWeight.bold),
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //       // Padding(
                        //       //   padding: const EdgeInsets.only(
                        //       //       top: 5, left: 8, right: 8),
                        //       //   child: Container(
                        //       //     padding: const EdgeInsets.symmetric(
                        //       //         horizontal: 10, vertical: 3),
                        //       //     decoration: BoxDecoration(
                        //       //       color: secondaryColor,
                        //       //       borderRadius: BorderRadius.circular(22),
                        //       //     ),
                        //       //     child: Center(
                        //       //       child: Text(
                        //       //         "charge :  ${pro.charge}",
                        //       //         style: const TextStyle(
                        //       //             fontSize: 14,
                        //       //             fontWeight: FontWeight.bold),
                        //       //       ),
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //       // Padding(
                        //       //   padding: const EdgeInsets.only(
                        //       //       top: 5, left: 8, right: 8),
                        //       //   child: Container(
                        //       //     padding: const EdgeInsets.symmetric(
                        //       //         horizontal: 10, vertical: 3),
                        //       //     decoration: BoxDecoration(
                        //       //       color: secondaryColor,
                        //       //       borderRadius: BorderRadius.circular(22),
                        //       //     ),
                        //       //     child: Center(
                        //       //       child: Text(
                        //       //         "range :  ${pro.range}",
                        //       //         style: const TextStyle(
                        //       //             fontSize: 14,
                        //       //             fontWeight: FontWeight.bold),
                        //       //       ),
                        //       //     ),
                        //       //   ),
                        //       // )
                        //     ],
                        //   ),
                        // ),

                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 2, left: 42, right: 42),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 1),
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.inventory_2_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "       ${pro.avalible}   ",
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: (Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 42, right: 42),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 1),
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.battery_charging_full_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "    ${pro.charge}",
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: (Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 42, right: 42),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.speed_sharp,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "  ${pro.range}",
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: (Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
                      ]),
                ))
          ],
        ),
      ),
    );
  }
}

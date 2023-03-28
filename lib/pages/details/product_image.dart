import 'package:flutter/material.dart';

import '../../theme.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({Key? key, required this.size, required this.image})
      : super(key: key);

  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: size.width * 0.80,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width,
            width: size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: secondaryColor,
              //shape: BoxShape.s,
            ),
          ),
          Image.asset(
            image,
            height: size.width,
            width: size.width,
            fit: BoxFit.fitWidth,
          )
        ],
      ),
    );
  }
}

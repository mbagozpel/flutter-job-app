import 'dart:math';

import 'package:flutter/material.dart';

import '../../konstants.dart';
import '../../size_config.dart';

class PageViewCard extends StatelessWidget {
  final String image;
  final String? textTop, textBottom;

  const PageViewCard({required this.image, this.textTop, this.textBottom});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: SizeConfig.screenHeight! * 0.4,
              width: SizeConfig.screenWidth! * 0.8,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [kDefaultShadow],
                  // color: kPrimaryColor.withOpacity(0.4)
                  gradient: kGradient),
            ),
            Transform.rotate(
              angle: pi / 180 * 0,
              child: Image.asset(
                image,
                width: 300,
                height: 320,
              ),
            ),
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(40),
        ),
        Column(
          children: [
            Text(
              textTop!,
              style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: getProportionateScreenHeight(30),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              textBottom!,
              style: TextStyle(
                  fontSize: getProportionateScreenHeight(30),
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Text(
                'Sed ut perspiciatis unde doloremque laudantium,  veritatis et quasi.',
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(40),
        ),
      ],
    );
  }
}

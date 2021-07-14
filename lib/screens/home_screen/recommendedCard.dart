import 'package:flutter/material.dart';

import 'package:job_app/models/recommended_jobs.dart';

import '../../konstants.dart';
import '../../size_config.dart';

class RecommendedCard extends StatelessWidget {
  final Recommended recommended;

  const RecommendedCard({required this.recommended});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
        // vertical: getProportionateScreenWidth(10),
      ),
      height: SizeConfig.screenHeight! * 0.2,
      width: SizeConfig.screenWidth! * 0.6,
      decoration: BoxDecoration(
          boxShadow: [kDefaultShadow],
          borderRadius: BorderRadius.circular(20),
          color: kPrimaryColor),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                  height: getProportionateScreenHeight(30),
                  width: getProportionateScreenWidth(30),
                  child: Image.asset(
                    recommended.image,
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white30),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recommended.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      recommended.subtitle,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildChip(recommended.text1),
                buildChip(recommended.text2),
                buildChip(recommended.text3)
              ],
            ),
            Text(
              recommended.renumeration,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )
          ],
        ),
      ),
    );
  }

  Chip buildChip(String text) {
    return Chip(
      label: Text(text),
      backgroundColor: kSecondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

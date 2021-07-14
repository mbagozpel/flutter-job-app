import 'package:flutter/material.dart';
import 'package:job_app/konstants.dart';
import 'package:job_app/models/featured_jobs.dart';

import '../../size_config.dart';

class FeaturedCard extends StatelessWidget {
  final FeaturedJobs featuredJobs;

  const FeaturedCard({required this.featuredJobs});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      width: SizeConfig.screenWidth! * 0.72,
      height: SizeConfig.screenHeight! * 0.2,
      decoration: BoxDecoration(
          boxShadow: [kDefaultShadow],
          borderRadius: BorderRadius.circular(20),
          color: kPrimaryColor.withOpacity(0.4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenHeight(30),
                child: Image.asset(
                  featuredJobs.image!,
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    featuredJobs.title!,
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    featuredJobs.subTitle!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                width: getProportionateScreenWidth(30),
                height: getProportionateScreenHeight(30),
                child: Icon(
                  Icons.more_horiz_rounded,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: kSecondaryColor),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildChip(featuredJobs.text1!),
              buildChip(featuredJobs.text2!),
              buildChip(featuredJobs.text3!),
              buildChip(featuredJobs.text4!)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                featuredJobs.renumeration!,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(featuredJobs.datePosted!)
            ],
          )
        ],
      ),
    );
  }

  Chip buildChip(String text) {
    return Chip(
      label: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

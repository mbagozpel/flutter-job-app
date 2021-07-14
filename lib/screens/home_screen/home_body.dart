import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:job_app/konstants.dart';
import 'package:job_app/models/featured_jobs.dart';
import 'package:job_app/models/recommended_jobs.dart';

import '../../size_config.dart';
import 'featureCard.dart';
import 'header.dart';
import 'recommendedCard.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Header(),
        row(context, text1: 'Recommended Jobs', text2: 'See more...'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                demoRecommend.length,
                (index) => RecommendedCard(
                      recommended: demoRecommend[index],
                    )),
          ),
        ),
        row(context, text1: 'Featured Jobs', text2: 'See more...'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demoFeatured.length,
              (index) => FeaturedCard(
                featuredJobs: demoFeatured[index],
              ),
            ),
          ),
        ),
        row(context, text1: 'Advertise with us', text2: 'See pricing..'),
        AdVertPlacement()
      ]),
    );
  }

  Container row(BuildContext context, {text1, text2}) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenHeight(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              text2,
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}

class AdVertPlacement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(10)),
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        width: double.infinity,
        height: SizeConfig.screenHeight! * 0.15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Advertise',
              style: TextStyle(color: Colors.red, fontSize: 35),
            ),
            Text('Here', style: TextStyle(color: Colors.black, fontSize: 30)),
            Text('+2348134294242',
                style: TextStyle(color: Colors.indigo[900], fontSize: 20))
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), gradient: kGradient),
      ),
      Positioned(
          right: 20,
          child: Image.asset(
            'assets/images/App Browsing MF S2.png',
            height: getProportionateScreenHeight(120),
          ))
    ]);
  }
}

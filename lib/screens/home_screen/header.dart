import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_app/konstants.dart';

import '../../size_config.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: TextField(
        autocorrect: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: kPrimaryColor.withOpacity(0.1),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)),
          hintStyle:
              Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
          hintText: 'Search for Job Openings',
          border: InputBorder.none,
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              height: SizeConfig.screenHeight! * 0.06,
              width: getProportionateScreenWidth(20),
              child: Icon(Icons.search, color: Colors.white, size: 30),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

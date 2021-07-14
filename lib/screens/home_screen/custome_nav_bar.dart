import 'package:flutter/material.dart';
import 'package:job_app/konstants.dart';

enum MenuState { home, favorite, message, profile }

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.1),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home, color: kPrimaryColor),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat_bubble,
                color: inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: inActiveIconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

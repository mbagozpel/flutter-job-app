import 'package:flutter/material.dart';
import 'package:job_app/konstants.dart';
import 'package:job_app/screens/home_screen/custome_nav_bar.dart';
import 'package:job_app/size_config.dart';

import 'home_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      backgroundColor: KbgColor,
      appBar: AppBar(
        backgroundColor: KbgColor,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: SafeArea(child: HomeBody()),
    );
  }
}

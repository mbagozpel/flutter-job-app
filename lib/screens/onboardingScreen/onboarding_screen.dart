import 'package:flutter/material.dart';
import 'package:job_app/konstants.dart';
import 'package:job_app/screens/home_screen/home_screen.dart';
import 'package:job_app/size_config.dart';
import 'package:job_app/models/page_view.dart';

import 'pageview_card.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: KbgColor,
      body: OnBoardingBody(),
    );
  }
}

class OnBoardingBody extends StatefulWidget {
  @override
  _OnBoardingBodyState createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  int _selectedIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(viewportFraction: 1, initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                demoModels.length,
                (index) => buildCircle(index: index),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: AspectRatio(
              aspectRatio: 0.8,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(
                    () {
                      _selectedIndex = index;
                    },
                  );
                },
                itemBuilder: (context, index) => PageViewCard(
                  image: demoModels[index].image,
                  textTop: demoModels[index].textTop,
                  textBottom: demoModels[index].textBottom,
                ),
                itemCount: demoModels.length,
                physics: ClampingScrollPhysics(),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondartyAnimation) =>
                          HomeScreen(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.forward_outlined,
                ),
                color: Colors.white,
              ),
              width: getProportionateScreenWidth(50),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildCircle({
    int? index,
  }) {
    return AnimatedContainer(
      duration: kDuration,
      margin: EdgeInsets.only(right: 5),
      height: getProportionateScreenHeight(20),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color:
                  _selectedIndex == index ? Colors.grey : Colors.transparent)),
      child: AnimatedContainer(
        width: getProportionateScreenWidth(20),
        duration: kDuration,
        decoration: BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
      ),
    );
  }
}

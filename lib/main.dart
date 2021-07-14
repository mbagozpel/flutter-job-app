import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/konstants.dart';

import 'screens/onboardingScreen/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Job App',
        theme: ThemeData(
            primaryColor: kPrimaryColor,
            textTheme:
                GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme)),
        home: OnboardingScreen());
  }
}

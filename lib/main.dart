import 'package:flutter/material.dart';
import 'package:tartan_hacks/Pages/WelcomeScreen.dart';
import 'package:tartan_hacks/Data/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MotieBot',
      theme: ThemeData(
        primaryColor: kPurple,
        scaffoldBackgroundColor: kOffWhite,
      ),
      initialRoute: "/WelcomeScreen",
      //This is where you will put the different pages we can navigate to
      routes: {
        "/WelcomeScreen": (context) => WelcomeScreen(),
      },
    );
  }
}

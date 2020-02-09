import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:barricade/Screens/CourseAddDrop/course_add_drop_screen.dart';

class StartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StartScreenState();
  }
}

class StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SplashScreen.navigate(
      name: 'assets/splashScreen.flr',
      next: CourseAddDrop(
        sugesstion: null,
      ),
      until: () => Future.delayed(Duration(seconds: 5)),
      startAnimation: '1',
      backgroundColor: Colors.white,
    );
  }
}
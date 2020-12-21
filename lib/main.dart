import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_app/view/StoreScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Container(
            height: 600,
            width: 600,
            child: Image.asset(
              'images/splash.png',
            ),
          ),
          duration: 1500,
          backgroundColor: Colors.black,
          nextScreen: StoreScreen(),
        ));
  }
}

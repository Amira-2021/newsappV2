import 'dart:async';
import 'package:flutter/material.dart';
import 'package:newsapp/view/home/home.dart';
class SplashScreen extends StatelessWidget {
  static const String routeNamed="splash";
  @override
  Widget build(BuildContext context) {
     Timer(const Duration(seconds: 2), () {
       Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      });
     return Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:AssetImage("assets/images/splash.png"),
              fit: BoxFit.cover,
            ),
          )
    );
  }
}

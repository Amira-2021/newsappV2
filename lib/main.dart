import 'package:flutter/material.dart';
import 'package:newsapp/core/style/my_theme.dart';
import 'package:newsapp/view/home/home.dart';
import 'package:newsapp/view/splash_screen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:MyTheme.lightTheme,
      initialRoute: SplashScreen.routeNamed,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        SplashScreen.routeNamed:(_)=>SplashScreen(),

      },
    );
  }
}


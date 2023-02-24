
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTheme {
  static  Color primaryLight =Colors.green;
  static final lightTheme=ThemeData(
    primaryColor: primaryLight,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: primaryLight,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,

      )
    ),
    textTheme: TextTheme(
      headline4: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: Colors.white
      )
    )
  );
}

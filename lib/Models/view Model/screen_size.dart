import 'package:flutter/material.dart';

class ScreenSize {
  static double deviceHeight = 0.0;
  static double deviceWidth = 0.0;

  static void init(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
  }
}

import 'package:flutter/material.dart';

class AppColor {
  static const Color backgroundColor = Color.fromARGB(255, 255, 255, 255);
  static const Color primaryColor = Color(0xff222222);
  static const Color secondryColor = Color(0xffE5AFAF);
  static const Color grayColor = Color(0xffC2C2C2);
  static const Color grayLightColor = Color(0xffF8F8F8);
  static const Color redColor = Color(0xffFF4B4B);
}

class AppLinearColor {
  static const LinearGradient linear1 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xffFF7A51), Color(0xffFFDB5C)]);
}

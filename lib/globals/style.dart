import 'package:flutter/material.dart';

class ColorStyles {
  const ColorStyles._();
  static const Color kPrimary = Color.fromRGBO(11, 11, 11, 1);
  static const Color kSecondary = Color.fromARGB(255, 23, 50, 255);
  static const Color kBackground = Color.fromRGBO(253, 254, 253, 1);
  static const Color kWhite = Color(0xffffffff);

  static const Color kBlack = Color(0xff000000);
  static const Color kDark = Color.fromARGB(255, 10, 12, 52);

  static const Color kGrey = Color(0xffD7D7D7);
  static const Color kRed = Color.fromARGB(255, 217, 10, 10);
}

TextStyle? globalTextStyle(
    {FontWeight? fontWeight, double? fontSize, Color? color}) {
  return TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize);
}

import 'package:flutter/material.dart';

class AppStyles {
  static Color bgColor = const Color(0xffeeedf2);
  static Color primaryColor = const Color(0xff687daf);
  static Color textColor = const Color(0xff3b3b3b);
  static Color ticketBlue = const Color(0xff526799);
  static Color ticketRed = const Color(0xfff37b67);
  static Color ticketColour = const Color(0xffffffff);
  static Color pensiveColor = const Color(0xffdcdde1);
  static Color plainColor = const Color(0xffbfc2df);
  static Color mezanineColor = const Color(0xff273c75);
  static Color circleColor = const Color(0xff189999);
  static Color ticketBorder = const Color(0xff8accf7);
  static Color dotColor = const Color(0xff192a56);
  static TextStyle headline1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headline3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xff415a77));
  static TextStyle headline2 =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
  static TextStyle headline4 =
       TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey.shade500);

  static Radius ticketRadius = const Radius.circular(21);
}

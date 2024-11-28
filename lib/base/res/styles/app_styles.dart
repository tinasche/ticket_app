import 'package:flutter/cupertino.dart';

class AppStyles {
  static Color bgColor = const Color(0xffeeedf2);
  static Color primaryColor = const Color(0xff687daf);
  static Color textColor = const Color(0xff3b3b3b);
  static Color ticketBlue = const Color(0xff526799);
  static Color ticketRed = const Color(0xfff37b67);
  static Color pensiveColor = const Color(0xffdcdde1);
  static TextStyle headline1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headline3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xff415a77));
  static TextStyle headline2 =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
  static TextStyle headline4 =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w400);

  static Radius ticketRadius = const Radius.circular(21);
}

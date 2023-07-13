import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    // ignore: deprecated_member_use
    backgroundColor: Colors.white,
    primaryColor: Colors.redAccent,
  );
  static final dark = ThemeData.dark().copyWith(
      // ignore: deprecated_member_use
      backgroundColor: Color(0xFF000000),
      primaryColor: Color(0xFF0266),
      primaryColorDark: Color(0xFFFF0266));
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyColors {
  static const primaryColor = Color.fromRGBO(24, 92, 55, 1.0);
  static const white = Color.fromRGBO(255, 255, 255, 0.95);
  static const grey = Color.fromRGBO(255, 255, 255, 0.6);
  static const black = Color.fromRGBO(0, 0, 0, 0.85);
  static const background = Color.fromRGBO(31, 33, 49, 1.0);
}

class MyTextStyle {
  static final boldWhite = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
      color: MyColors.white,
    ),
  );
  static final regularWhite = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      fontWeight: FontWeight.normal,
      color: MyColors.white,
    ),
  );
  static final regularGrey = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      fontWeight: FontWeight.normal,
      color: MyColors.grey,
    ),
  );
  static final logoWhite = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w900,
      color: MyColors.white,
    ),
  );
}

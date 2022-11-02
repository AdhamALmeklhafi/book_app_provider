import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme = TextTheme(
  headline1: GoogleFonts.sourceSerifPro(
    fontSize: 20,
    color: Colors.black87,
    fontWeight: FontWeight.w800,
  ),
  headline2: GoogleFonts.sourceSerifPro(
    fontSize: 13,
    color: Colors.black87,
    fontWeight: FontWeight.w800,
  ),
  headline3: GoogleFonts.sourceSerifPro(
    fontSize: 18,
    color: Colors.black87,
    fontWeight: FontWeight.w800,
  ),
  headline4: GoogleFonts.poppins(
    fontSize: 16,
    color: Colors.black87,
    fontWeight: FontWeight.w400,
  ),
  headline5: GoogleFonts.poppins(
    color: Colors.grey,
    fontWeight: FontWeight.w400,
  ),
);

class AppColors {
  static Color lightBlue = const Color(0xffcFEDEF);
  static Color black = Colors.black87;
}

List<Color> boxColors = const [
  Color(0xffcEEDEF),
  Color(0xffBFBFBF),
  Color(0xffEBECF1),
  Color(0xffFDF7DD),
];

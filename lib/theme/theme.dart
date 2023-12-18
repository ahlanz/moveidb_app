import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double margin = 30;

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: bgcolor2,
    primary: primaryDarkText,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: bgcolor1,
    primary: primaryTextColor,
  ),
);

Color primaryColor = const Color(0xff0386D0);
Color bgcolor1 = const Color(0xff060D20);
Color primaryDarkText = const Color(0xff060D20);
Color bgcolor2 = const Color(0xffFFFFFF);
Color primaryTextColor = const Color(0xffFFFFFF);
Color buttonColor = const Color(0xffFEB800);

TextStyle primaryTextColorStyle = GoogleFonts.poppins(color: primaryTextColor);
TextStyle bannerTextStyle = GoogleFonts.rubikGlitch(color: primaryTextColor);

FontWeight light = FontWeight.w300;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;

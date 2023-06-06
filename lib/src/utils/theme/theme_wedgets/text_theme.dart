import 'package:book_my_guide/src/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: appDarkColor),
    displayMedium: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: appDarkColor),
    displaySmall: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: appDarkColor),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 16.0, fontWeight: FontWeight.w700, color: appDarkColor),
    headlineSmall: GoogleFonts.poppins(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: appDarkColor),
    titleLarge: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: appDarkColor),
    bodyLarge: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: appDarkColor),
    bodyMedium: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: appDarkColor),
  );
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: appWhiteColor),
    displayMedium: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: appWhiteColor),
    displaySmall: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: appWhiteColor),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 16.0, fontWeight: FontWeight.w700, color: appWhiteColor),
    headlineSmall: GoogleFonts.poppins(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: appWhiteColor),
    titleLarge: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: appWhiteColor),
    bodyLarge: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: appWhiteColor),
    bodyMedium: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: appWhiteColor),
  );
}

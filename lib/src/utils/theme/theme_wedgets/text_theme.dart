import 'package:book_my_guide/src/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customTextTheme{
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color:appDarkColor),
      headline2: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: appDarkColor),
      headline3: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700,color: appDarkColor),
      headline4: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w700, color: appDarkColor),
      headline5: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: appDarkColor),
      headline6: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600, color: appDarkColor),

      bodyText1: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: appDarkColor),
      bodyText2: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal,color: appDarkColor),


  );
  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: appWhiteColor),
    headline2: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: appWhiteColor),
    headline3: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700,color: appWhiteColor),
    headline4: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w700, color: appWhiteColor),
    headline5: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: appWhiteColor),
    headline6: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600, color: appWhiteColor),

    bodyText1: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: appWhiteColor),
    bodyText2: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal,color: appWhiteColor),


  );

}

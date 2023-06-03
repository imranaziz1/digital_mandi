import 'package:book_my_guide/src/utils/theme/theme_wedgets/outlined_button_theme.dart';
import 'package:book_my_guide/src/utils/theme/theme_wedgets/text_field_theme.dart';
import 'package:book_my_guide/src/utils/theme/theme_wedgets/text_theme.dart';
import 'package:flutter/material.dart';

class CustomAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // primarySwatch: MaterialColor(0xFFFFE200, <int, Color>{
    //   50: Color(0x1AFFE200),
    //   100: Color(0x33FFE200),
    //   200: Color(0x4DFFE200),
    //   300: Color(0x66FFE200),
    //   400: Color(0x80FFE200),
    //   500: Color(0x99FFE200),
    //   600: Color(0xB3FFE200),
    //   700: Color(0xCCFFE200),
    //   800: Color(0xE6FFE200),
    //   900: Color(0xFFFFE200),
    //
    // }),

    textTheme: CustomTextTheme.lightTextTheme,

    elevatedButtonTheme: ElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: myOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: CustomTextTheme.darkTextTheme,
    elevatedButtonTheme: ElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: myOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.darkInputDecorationTheme,
  );
}

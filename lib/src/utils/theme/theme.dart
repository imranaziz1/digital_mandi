import 'package:book_my_guide/src/utils/theme/theme_wedgets/elevated_button_theme.dart';
import 'package:book_my_guide/src/utils/theme/theme_wedgets/outlined_button_theme.dart';
import 'package:book_my_guide/src/utils/theme/theme_wedgets/text_field_theme.dart';
import 'package:book_my_guide/src/utils/theme/theme_wedgets/text_theme.dart';
import 'package:flutter/material.dart';

class CustomAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: CustomTextTheme.lightTextTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: CustomTextTheme.darkTextTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
  );
}

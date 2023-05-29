import 'package:book_my_guide/src/constants/color.dart';
import 'package:flutter/material.dart';

class MTextFormFieldTheme {
  MTextFormFieldTheme();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: mySecondaryColor,
        floatingLabelStyle: TextStyle(color: mySecondaryColor),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2,color: mySecondaryColor))
      );

  static InputDecorationTheme darkInputDecorationTheme =
  const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: myPrimaryColor,
      floatingLabelStyle: TextStyle(color: myPrimaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2,color: myPrimaryColor))
  );
}
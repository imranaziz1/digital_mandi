import 'package:flutter/material.dart';

import '../../../constants/color.dart';
import '../../../constants/sizes.dart';

class MyElevatedButtonTheme {
  MyElevatedButtonTheme();
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      backgroundColor: mySecondaryColor,
      foregroundColor: appWhiteColor,
      side: const BorderSide(color: mybuttonColor),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      backgroundColor: appWhiteColor,
      foregroundColor: mySecondaryColor,
      side: const BorderSide(color: appWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );
}

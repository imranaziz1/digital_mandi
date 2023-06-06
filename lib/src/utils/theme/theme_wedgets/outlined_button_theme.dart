import 'package:flutter/material.dart';

import '../../../constants/color.dart';
import '../../../constants/sizes.dart';

class MyOutlinedButtonTheme {
  MyOutlinedButtonTheme();
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: mybuttonColor,
      side: const BorderSide(color: mybuttonColor),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: appWhiteColor,
      side: const BorderSide(color: appWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );
}

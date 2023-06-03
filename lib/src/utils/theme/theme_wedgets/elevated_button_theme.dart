import 'package:flutter/material.dart';

import '../../../constants/color.dart';
import '../../../constants/sizes.dart';

class ElevatedButtonTheme {
  ElevatedButtonTheme();
  final lightlyElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      backgroundColor: mySecondaryColor,
      foregroundColor: appWhiteColor,
      side: const BorderSide(color: mybuttonColor),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );

  final darklyElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      backgroundColor: appWhiteColor,
      foregroundColor: mySecondaryColor,
      side: const BorderSide(color: appWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );
}

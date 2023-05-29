import 'package:flutter/material.dart';

import '../../../constants/color.dart';
import '../../../constants/sizes.dart';

class myElevatedButtonTheme{
  myElevatedButtonTheme();
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(

    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      backgroundColor: mySecondaryColor,
      foregroundColor: appWhiteColor,
      side: BorderSide(color: mySecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );

      static final darkElevatedButtonTheme = ElevatedButtonThemeData(

    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      backgroundColor: appWhiteColor,
      foregroundColor: mySecondaryColor,
      side: BorderSide(color: appWhiteColor),
      padding: EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );

}
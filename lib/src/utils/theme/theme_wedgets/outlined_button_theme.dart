import 'package:flutter/material.dart';

import '../../../constants/color.dart';
import '../../../constants/sizes.dart';

class myOutlinedButtonTheme{
  myOutlinedButtonTheme();
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(

    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: mybuttonColor,
      side: BorderSide(color: mybuttonColor),
      padding: EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(

    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: appWhiteColor,
      side: BorderSide(color: appWhiteColor),
      padding: EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );

}
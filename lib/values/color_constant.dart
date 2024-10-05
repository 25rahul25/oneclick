import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  AppColors._();

  static Color whiteColor = const Color.fromRGBO(255, 255, 255, 1);
  static Color blackColor = const Color.fromRGBO(0, 0, 0, 1);
  static Color greyColor = const Color.fromRGBO(128, 128, 128, 1);
  static Color secondaryColor = const Color.fromRGBO(0, 129, 138, 1);
  static Color greenColor = const Color.fromRGBO(60, 179, 113, 1);
  static Color primaryBackground = const Color.fromRGBO(32, 102, 150, 1);
  static Color dividerColor = const Color.fromRGBO(99, 181, 240, 1);
  static Color buttonSecondaryColor = const Color.fromRGBO(99, 146, 177, 1);
  static Color buttonPrimaryColor = const Color.fromRGBO(42, 194, 162, 1);
  static Color primaryColor = const Color.fromRGBO(116, 204, 126, 1);
  static Color errorColor = const Color.fromRGBO(240, 0, 0, 1);
  static Color hintColor = const Color.fromRGBO(73, 93, 111, 1);
  static Color secondaryBackground = const Color.fromRGBO(9, 40, 62, 1);
  static Color lightGreyColor = const Color.fromRGBO(70, 70, 70, 1);

  static Gradient buttonVerticalGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      primaryColor,
      secondaryColor,
    ],
  );
  static Gradient buttonHorizontalGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      primaryColor.withOpacity(0.7),
      secondaryColor.withOpacity(0.7),
    ],
  );
}

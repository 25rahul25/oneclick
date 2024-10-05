import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:sizer/sizer.dart';

class AppButtonStyles {
  const AppButtonStyles._();

  static ButtonStyle elevationButtonFullWidth = ElevatedButton.styleFrom(
    elevation: 1,
    minimumSize: Size(80.w, 40.sp),
    backgroundColor: AppColors.buttonPrimaryColor,
    maximumSize: Size(100.w, 60.sp),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(RadiusConstants.borderRadius30),
    ),
  );

  static ButtonStyle elevationButtonMediumWidth = ElevatedButton.styleFrom(
    elevation: 1,
    minimumSize: Size(50.w, 40.sp),
    backgroundColor: AppColors.buttonPrimaryColor,
    maximumSize: Size(100.w, 60.sp),
    textStyle: AppTextStyles.buttonText,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(RadiusConstants.borderRadius30),
    ),
  );

  static ButtonStyle elevationButtonSmallWidth = ElevatedButton.styleFrom(
    elevation: 1,
    minimumSize: Size(30.w, 40.sp),
    backgroundColor: AppColors.buttonPrimaryColor,
    maximumSize: Size(35.w, 60.sp),
    textStyle: AppTextStyles.buttonText,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(RadiusConstants.borderRadius30),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:sizer/sizer.dart';

class AppTextStyles {
  const AppTextStyles._();

  static final poppinsB2 = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );
  static final poppinsB3 = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );
  static final poppinsB4 = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: 8.sp,
    fontWeight: FontWeight.w400,
  );
  static final hintText = GoogleFonts.poppins(
    color: AppColors.blackColor.withOpacity(0.5),
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
  static final hintText2 = GoogleFonts.poppins(
    color: AppColors.blackColor.withOpacity(0.5),
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
  );
  static final hintText3 = GoogleFonts.poppins(
    color: AppColors.blackColor.withOpacity(0.3),
    fontSize: 9.sp,
    fontWeight: FontWeight.normal,
  );

  static final poppinsB1 = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
  );
  static final tableRaleWayB2 = GoogleFonts.raleway(
    color: AppColors.whiteColor,
    fontSize: 8.5.sp,
    fontWeight: FontWeight.w600,
  );
  static final poppinsH2 = GoogleFonts.poppins(
    color: AppColors.whiteColor,
    fontSize: 30.sp,
    fontWeight: FontWeight.w600,
  );
  static final tableHeadingText = GoogleFonts.raleway(
    color: AppColors.buttonPrimaryColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );

  static final tableOpenSansB2 = GoogleFonts.openSans(
    color: AppColors.whiteColor,
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
  );

  static final openSansB2 = GoogleFonts.openSans(
    color: AppColors.whiteColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

  static final josefinSans = GoogleFonts.josefinSans(
    color: AppColors.whiteColor,
    fontSize: 12.sp,
  );
  static final buttonText = GoogleFonts.raleway(
    color: AppColors.whiteColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );
}

import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:sizer/sizer.dart';

class CustomGradientButton extends StatelessWidget {
   CustomGradientButton({
    super.key,
    this.width,
    this.height,
    required this.onTap,
    required this.text,
    this.isVertical = false,
    this.borderRadius,
    required this.inProgress,
    this.padding,
    this.textStyle,
  });

  final double? width;
  final double? height;
  final void Function()? onTap;
  final String text;
  final bool isVertical;
  final double? borderRadius;
  final bool inProgress;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: inProgress ? null : onTap,
      child: Container(
        alignment: Alignment.center,
        height: height ?? 6.h,
        width: width ?? 34.w,
        padding: padding,
        decoration: BoxDecoration(
          color: inProgress ? AppColors.greyColor : null,
          gradient: inProgress
              ? null
              : isVertical
                  ? AppColors.buttonVerticalGradient
                  : AppColors.buttonHorizontalGradient,
          borderRadius: BorderRadius.circular(
            borderRadius ?? RadiusConstants.borderRadius35,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (inProgress) const Spacer(),
            Flexible(
              flex: 8,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: textStyle ?? AppTextStyles.poppinsB2.copyWith(fontSize: 15,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
            if (inProgress)
              Flexible(
                flex: 3,
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(color: AppColors.whiteColor),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

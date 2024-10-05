import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/utils/ui/app_button_style.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/square_wrapper.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.inProgress,
    required this.valid,
    this.buttonColor,
    this.leadingIcon,
    this.trailingIcon,
    this.buttonStyle,
    this.textColor,
    this.width,
    this.isShadow = false,
    this.height,
    this.buttonBorderRadius,
    this.isGradientBackground = false,
  });

  final String buttonText;
  final void Function()? onPressed;
  final bool inProgress;
  final bool valid;
  final Color? buttonColor;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final ButtonStyle? buttonStyle;
  final Color? textColor;
  final double? width;
  final double? height;
  final double? buttonBorderRadius;
  final bool isShadow;
  final bool isGradientBackground;

  @override
  Widget build(BuildContext context) {
    return SquareWrapper(
      isShadow: isShadow,
      child: SizedBox(
        height: height ?? 6.5.h,
        width: width ?? 37.w,
        child: ElevatedButton(
          onPressed: valid && inProgress == false ? onPressed : null,
          style: buttonStyle ??
              AppButtonStyles.elevationButtonSmallWidth.copyWith(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        buttonBorderRadius ?? RadiusConstants.borderRadius12),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll(
                    buttonColor ?? AppColors.buttonPrimaryColor),
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (inProgress) const Spacer(),
              Flexible(
                flex: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (leadingIcon != null) leadingIcon!,
                    Text(
                      buttonText,
                      style: AppTextStyles.buttonText
                          .copyWith(color: textColor ?? AppColors.whiteColor),
                    ),
                    if (trailingIcon != null) trailingIcon!,
                  ],
                ),
              ),
              if (inProgress)
                Flexible(
                  flex: 3,
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

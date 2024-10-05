import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.onTap,
    required this.svgPath,
    this.height,
    this.color,
    this.padding,
    this.text = "",
    this.textStyle,
    this.svgColor,
    this.radius,
  }) : super(key: key);
  final VoidCallback onTap;
  final String svgPath;
  final double? height;
  final Color? color;
  final Color? svgColor;
  final EdgeInsets? padding;
  final String text;
  final TextStyle? textStyle;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Row(
       mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: radius,
            backgroundColor: color ?? Colors.transparent,
            child: CustomSvg(
              svgPath: svgPath,
              height: height ?? 5.5.h,
              padding: padding,
              color: svgColor,
            ),
          ),
          if (text.isNotEmpty) Gap(width: 2.w),
          Text(
            text,
            style: textStyle ??
                AppTextStyles.openSansB2.copyWith(
                  color: AppColors.blackColor,
                ),
          ),
        ],
      ),
    );
  }
}

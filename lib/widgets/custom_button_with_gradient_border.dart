import 'package:flutter/material.dart';
import 'package:one_click/values/assets.dart';
import 'package:sizer/sizer.dart';

class CustomButtonWithGradientBorder extends StatelessWidget {
  const CustomButtonWithGradientBorder({
    Key? key,
    required this.widget,
    required this.onTap,
    this.height,
    this.width,
  }) : super(key: key);
  final Widget widget;
  final VoidCallback onTap;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height ?? 6.h,
        width: width ?? 35.w,
        padding: EdgeInsets.symmetric(
          horizontal: 2.w,
          vertical: 1.h,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.buttonGradientBorder),
            fit: BoxFit.fill,
          ),
        ),
        child: widget,
      ),
    );
  }
}

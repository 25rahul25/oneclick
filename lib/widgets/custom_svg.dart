import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class CustomSvg extends StatelessWidget {
  const CustomSvg({
    super.key,
    required this.svgPath,
    this.height,
    this.width,
    this.color,
    this.padding, this.alignment, this.fit,
  });

  final String svgPath;
  final double? height;
  final double? width;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: SvgPicture.asset(
        svgPath,
        height: height ?? 16.sp,
        width: width ?? 16.sp,
        color: color,
        alignment: alignment ?? Alignment.center,
        fit: fit ?? BoxFit.contain,
      ),
    );
  }
}
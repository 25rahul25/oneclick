import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:one_click/values/color_constant.dart';

class CustomShimmer extends StatelessWidget {
  const CustomShimmer({
    Key? key,
    required this.child,
    this.baseColor,
    this.highlightColor,
  }) : super(key: key);
  final Widget child;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? AppColors.primaryColor,
      highlightColor: highlightColor ?? AppColors.hintColor,
      enabled: true,
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Gap extends StatelessWidget {
  const Gap({
    super.key,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 14.sp,
      width: width ?? 14.sp,
    );
  }
}
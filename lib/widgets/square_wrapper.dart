import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';

class SquareWrapper extends StatelessWidget {
  const SquareWrapper({
    super.key,
    this.isShadow = false,
    this.isBorder = false,
    this.height,
    this.width,
    required this.child,
  });

  final bool isShadow;
  final bool isBorder;
  final double? height;
  final double? width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: isShadow
            ? [
                BoxShadow(
                    blurRadius: 25.0,
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    spreadRadius: 3.0,
                    color: AppColors.blackColor.withOpacity(0.2)),
              ]
            : [],
        border: isBorder
            ? Border.all(color: AppColors.primaryBackground.withOpacity(0.2))
            : null,
        borderRadius: BorderRadius.circular(RadiusConstants.borderRadius30),
      ),
      child: child,
    );
  }
}

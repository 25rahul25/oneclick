import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/square_wrapper.dart';
import 'package:sizer/sizer.dart';

import '../values/color_constant.dart';

class CustomDropDownButton2 extends StatefulWidget {
  const CustomDropDownButton2({
    super.key,
    required this.itemList,
    this.width,
    required this.onChangedValue,
    this.margin,
    this.color,
    this.hintText = '',
    this.offset = const Offset(-7, -12),
    this.selectedItem,
    this.isShadow = true,
    this.height,
    this.isUnderLine = true,
    this.isStyle = false,
  });

  final String? selectedItem;
  final Color? color;
  final List<String> itemList;
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final String hintText;
  final void Function(
    String? selectedItem,
  ) onChangedValue;
  final Offset offset;
  final bool isShadow;
  final bool isUnderLine;
  final bool isStyle;

  @override
  State<CustomDropDownButton2> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton2> {
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return SquareWrapper(
      child: Container(
        height: widget.height ?? 5.h,
        width: widget.width ?? 98.w,
        padding: EdgeInsets.symmetric(
          horizontal: 3.w,
        ),
        margin: widget.margin ??
            EdgeInsets.symmetric(
              vertical: 8.sp,
            ),

        // decoration: BoxDecoration(
        //   color: widget.color ?? AppColors.whiteColor,
        //   borderRadius: BorderRadius.circular(
        //     RadiusConstants.borderRadius12,
        //   ),

        // border: Border.all(
        //   color: AppColors.blackColor.withOpacity(0.35),
        //   width: 0.5.sp,
        // ),
        // boxShadow: widget.isShadow
        //     ? [
        //   BoxShadow(
        //     blurRadius: 4,
        //     offset: const Offset(
        //       2.5,
        //       2.4,
        //     ),
        //     spreadRadius: 0.2,
        //     color: AppColors.blackColor.withOpacity(0.1),
        //   ),
        // ]
        //     : [],
        // ),
        alignment: Alignment.center,
        child: DropdownButton2<String>(
          hint: Text(
            widget.hintText,
            style: widget.isStyle
                ? AppTextStyles.poppinsB2.copyWith(color: AppColors.secondaryColor)
                : AppTextStyles.hintText2,
          ),
          value: selectedItem ?? widget.selectedItem,
          // dropdownDecoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(
          //     RadiusConstants.borderRadius8,
          //   ),
          // ),
          icon: CustomSvg(
            svgPath: Assets.arrowDown,
            height: 10.sp,
            width: 20.sp,
          ),
          dropdownWidth: (widget.width ?? 90.w) * 0.96,
          buttonWidth: widget.width ?? 98.w,
          dropdownMaxHeight: 20.h,
          offset: widget.offset,
          iconOnClick: RotatedBox(
            quarterTurns: 2,
            child: CustomSvg(
              svgPath: Assets.arrowDown,
              height: 10.sp,
              width: 20.sp,
            ),
          ),
          style: AppTextStyles.hintText2,

          underline: widget.isUnderLine
              ? Container(
                  height: 0.1.h,
                  width: 2.w,
                  color: AppColors.hintColor,
                )
              : Container(),
          isExpanded: true,
          onChanged: (String? value) {
            widget.onChangedValue.call(
              value,
            );
          },
          items: widget.itemList
              .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              })
              .toSet()
              .toList(),
        ),
      ),
    );
  }
}

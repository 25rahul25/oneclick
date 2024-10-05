import 'package:flutter/material.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_field.dart';
import 'package:one_click/widgets/square_wrapper.dart';
import 'package:sizer/sizer.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.searchController,
    this.onChanged,
    this.shouldShowShadow = false,
    this.shouldShowBorder = false,
  });

  final TextEditingController searchController;
  final dynamic Function(String)? onChanged;
  final bool shouldShowShadow;
  final bool shouldShowBorder;

  @override
  Widget build(BuildContext context) {
    return SquareWrapper(
      isShadow: shouldShowShadow,
      isBorder: shouldShowBorder,
      child: CustomTextField(
        isShadow: false,
        height: 6.5.h,
        controller: searchController,
        prefixIcon: CustomSvg(
          padding: EdgeInsets.all(8.sp),
          svgPath: Assets.searchIcon,
        ),
        textFieldRadius: RadiusConstants.borderRadius12,
        hintText: 'Search for a Restaurant',
        hideBorder: false,
        onChanged: onChanged,
        suffix: const CustomSvg(
          padding: EdgeInsets.all(8.0),
          svgPath: Assets.micIcon,
        ),
      ),
    );
  }
}

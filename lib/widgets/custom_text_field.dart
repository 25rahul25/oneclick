import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:sizer/sizer.dart';

/// How to use CustomTextField with validation
///      CustomTextField(
///        controller: emailController,
///        prefixIcon: Assets.assetsEmail,
///        hintText: "abc@gmail.com",
///        validator: MultiValidator([
///        RequiredValidator(errorText: "Can't be empty"),
///        EmailValidator(errorText: "Enter Valid Email"),
///       ]),
///      ),

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.prefixIcon,
    this.textInputType = TextInputType.text,
    this.isPasswordField = false,
    this.hintText,
    this.validator,
    this.textFieldRadius,
    this.hideBorder = false,
    this.onChanged,
    this.padding,
    this.maxLines,
    this.enabled,
    this.suffix,
    this.isShadow = true,
    this.height,
    this.maxLenghth,
    this.minLenghth,
  });

  final TextEditingController? controller;
  final Widget? prefixIcon;
  final double? height;
  final bool isPasswordField;
  final TextInputType? textInputType;
  final String? hintText;
  final FieldValidator<String?>? validator;
  final double? textFieldRadius;
  final bool? hideBorder;
  final dynamic Function(String)? onChanged;
  final EdgeInsetsGeometry? padding;
  final int? maxLines;
  final int? maxLenghth;
  final int? minLenghth;
  final bool? enabled;
  final Widget? suffix;
  final bool isShadow;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = false;
  bool showError = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // height: widget.height ?? 5.5.h,
      // decoration: BoxDecoration(
      //   boxShadow: widget.isShadow
      //       ? [
      //           BoxShadow(
      //               blurRadius: 4,
      //               offset: const Offset(
      //                 2.5,
      //                 2.4,
      //               ),
      //               spreadRadius: 0.2,
      //               color: AppColors.blackColor.withOpacity(0.1)),
      //         ]
      //       : [],
      // ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        controller: widget.controller,
        obscureText: widget.isPasswordField && !showPassword,
        onChanged: widget.onChanged,
        maxLines: widget.maxLines ?? 1,
        maxLength: widget.maxLenghth,
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.whiteColor,
          enabled: widget.enabled ?? true,
          contentPadding: widget.padding ?? EdgeInsets.symmetric(horizontal: 3.w),
          prefixIcon: widget.prefixIcon,
          prefixIconConstraints: const BoxConstraints(),
          suffixIconConstraints: const BoxConstraints(),
          hintText: widget.hintText ?? '',
          hintStyle: AppTextStyles.hintText2,
          suffixIcon: GestureDetector(
            onTap: onPressed,
            child: widget.suffix ??
                SuffixIcon(
                  showPassword: showPassword,
                  isPassword: widget.isPasswordField,
                  showError: showError,
                ),
          ),
          focusedBorder: widget.hideBorder == true
              ? InputBorder.none
              : OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.primaryColor.withOpacity(0.7),
                  ),
                  borderRadius: BorderRadius.circular(
                    widget.textFieldRadius ?? RadiusConstants.borderRadius12,
                  ),
                ),
          enabledBorder: widget.hideBorder == true
              ? InputBorder.none
              : OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.blackColor.withOpacity(0.35),
                  ),
                  borderRadius: BorderRadius.circular(
                    widget.textFieldRadius ?? RadiusConstants.borderRadius12,
                  ),
                ),
          border: widget.hideBorder == true
              ? InputBorder.none
              : OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(
                    widget.textFieldRadius ?? RadiusConstants.borderRadius12,
                  ),
                ),
          errorStyle: AppTextStyles.poppinsB2.copyWith(color: AppColors.errorColor),
        ),
        validator: (value) {
          final errorString = widget.validator?.call(value);
          updateShowError(
            newValue: errorString != null && errorString.isNotEmpty,
          );
          return errorString;
        },
        style: AppTextStyles.poppinsB3,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }

  void updateShowError({required bool newValue}) {
    if (showError != newValue) {
      Future<dynamic>.delayed(const Duration(milliseconds: 100)).then((_) {
        if (mounted) {
          setState(() {
            showError = newValue;
          });
        }
      });
    }
  }

  void onPressed() {
    if (widget.isPasswordField) {
      setState(() {
        showPassword = !showPassword;
      });
    }
  }
}

class SuffixIcon extends StatelessWidget {
  const SuffixIcon({
    super.key,
    this.suffixIconPath,
    required this.showPassword,
    required this.isPassword,
    required this.showError,
    this.padding,
  });

  final String? suffixIconPath;
  final bool isPassword;
  final bool showPassword;
  final bool showError;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    if (showError) {
      return CustomSvg(
        padding: padding ?? EdgeInsets.all(8.sp),
        svgPath: Assets.error,
      );
    } else if (isPassword && (showPassword == false)) {
      return CustomSvg(
        padding: padding ?? EdgeInsets.all(8.sp),
        svgPath: Assets.eyeClose,
      );
    } else if (isPassword && showPassword) {
      return CustomSvg(
        padding: padding ?? EdgeInsets.all(8.sp),
        svgPath: Assets.eye,
      );
    } else if (suffixIconPath != null) {
      return CustomSvg(
        padding: padding ?? EdgeInsets.all(8.sp),
        svgPath: suffixIconPath!,
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';

class CustomTextWithBackground extends StatelessWidget {
  const CustomTextWithBackground({
    Key? key,
    required this.text,
    this.textStyle,
  }) : super(key: key);
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.nameBackground),
          alignment: Alignment.bottomRight,
        ),
      ),
      child: Text(
        text,
        style: textStyle ??
            AppTextStyles.poppinsB1.copyWith(
              color: AppColors.blackColor.withOpacity(
                0.7,
              ),
            ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../../utils/ui/app_text_style.dart';

class MySpecification extends StatelessWidget {
  const MySpecification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(),
        Padding(
          padding:  EdgeInsets.only(left: 5.w),
          child: Text(
            'Specification',
            style: AppTextStyles.poppinsB3,
          ),
        ),
        const Gap(),
        const _CustomRow(text1: 'Product Model', text2: 'Escape Mesh'),
        const Gap(),
        const _CustomRow(
          text1: 'Manufacture details',
          text2: '48/B, Batahouse, malaseri Bhat-gandhinagar',
        ),
        const Gap(),
        const _CustomRow(
          text1: 'Product weight',
          text2: '0.7190kg, 719gm',
        ),
        const Gap(),
        const _CustomRow(
          text1: 'Brand',
          text2: 'Puma',
        ),
        const Gap(),
        const _CustomRow(text1: 'Size', text2: '11'),
        const Gap(),
        const _CustomRow(text1: "Type", text2: "Running shoes, womens shoes"),
        const Gap(),
        const _CustomRow(text1: "Color", text2: "navy"),
      ],
    );
  }
}

class _CustomRow extends StatelessWidget {
  const _CustomRow({Key? key, required this.text1, required this.text2})
      : super(key: key);
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 30.w,
            child: Text(
              text1,
              style: AppTextStyles.hintText,
            ),
          ),
          SizedBox(
            width: 50.w,
            child: Text(
              text2,
              style: AppTextStyles.poppinsB3,
              textAlign: TextAlign.right,
            ),
          )
        ],
      ),
    );
  }
}

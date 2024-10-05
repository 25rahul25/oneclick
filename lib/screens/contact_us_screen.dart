import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        title: CustomTextWithBackground(
          text: 'Contact Us',
          textStyle: AppTextStyles.poppinsB1,
        ),
        leading:  InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child:const CustomSvg(
            svgPath: Assets.backArrow,
            padding: EdgeInsets.all(RadiusConstants.borderRadius12),
          ),
        ),
      ),
      body: const _BuildBody(),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(
            height: 10.h,
          ),
          Text(
            "Get in touch if you",
            style: AppTextStyles.poppinsB1,
          ),
          Text(
            "need help with a",
            style: AppTextStyles.poppinsB1,
          ),
          Text(
            "Project",
            style: AppTextStyles.poppinsB1
                .copyWith(color: AppColors.secondaryColor),
          ),
          const Gap(),
          const Image(
            image: AssetImage('assets/temp/map_locator.png'),
          ),
          const Gap(),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              CustomSvg(svgPath: Assets.locationIcon,height: 22,),
              CustomTextWithBackground(text: ' Gandhinagar'),
            ],
          ),
          Text(
            '10 Unoion terrace',
            style: AppTextStyles.poppinsB3,
          ),
          Text(
            'E10 OGG',
            style: AppTextStyles.poppinsB3,
          ),
          Row(
            children: [
              Text(
                'get direction ',
                style: AppTextStyles.poppinsB3,
              ),
              const CustomSvg(svgPath: Assets.locationDownArrow,),
            ],
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.sp),
            child: Row(
              children: [
                CustomSvg(
                  svgPath: Assets.emailIcon,
                  height: 5.h,
                  width: 10.w,
                ),
                const Gap(),
                Text(
                  'hello@company.com',
                  style: AppTextStyles.poppinsB2,
                )
              ],
            ),
          ),
          Row(
            children: [
              CustomSvg(
                svgPath: Assets.phoneIcon,
                height: 5.h,
                width: 10.w,
              ),
              const Gap(),
              Text(
                '+91 9033251903',
                style: AppTextStyles.poppinsB2,
              )
            ],
          ),
        ],
      ),
    );
  }
}

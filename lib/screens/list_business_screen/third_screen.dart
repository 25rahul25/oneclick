
import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/screens/home_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class ListBusinessScreen3 extends StatefulWidget {
  const ListBusinessScreen3({Key? key,}) : super(key: key);

  @override
  State<ListBusinessScreen3> createState() => _ListBusinessScreen3State();
}

class _ListBusinessScreen3State extends State<ListBusinessScreen3> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        title: CustomTextWithBackground(
          text: 'Free Listing',
          textStyle: AppTextStyles.poppinsB1,
        ),
        leading:  GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: const CustomSvg(
            svgPath: Assets.backArrow,
            padding: EdgeInsets.all(RadiusConstants.borderRadius12),
          ),
        ),
      ),
      body:
      // PageView(
      //   controller: pageController,
      //   physics: const NeverScrollableScrollPhysics(),
      //   children: [
     const _BuildBody(),
      // _BuildBody2(pageController: pageController, ),
      // const _BuildBody3(),
      //   ],
      // ),
    );
  }
}
class _BuildBody extends StatelessWidget {
  const _BuildBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextWithBackground(
            text: 'Thank you',
            textStyle: AppTextStyles.poppinsB1.copyWith(fontSize: 25.sp),
          ),
          Gap(
            height: 5.h,
          ),
          Text(
            'we have recieved',
            style: AppTextStyles.poppinsB1,
          ),
          Text('your information',
              style: AppTextStyles.poppinsB1
                  .copyWith(color: const Color(0xff74CC7E))),
          Text('it will appear on all our platform',
              // style:  AppTextStyles.poppinsB1,
            style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          RichText(
            text: TextSpan(
              text: 'in',
              style: AppTextStyles.poppinsB1,
              children: <TextSpan>[
                TextSpan(
                    text: ' next 24-28',
                    style: AppTextStyles.poppinsB1
                        .copyWith(color: const Color(0xff74CC7E))),
                TextSpan(text: ' ours', style: AppTextStyles.poppinsB1),
              ],
            ),
          ),
          Gap(
            height: 3.h,
          ),
          CustomGradientButton(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
            },
            text: 'Thanks',
            inProgress: false,
            isVertical: true,
          ),
          Gap(
            height: 9.h,
          ),
        ],
      ),
    );
  }
}
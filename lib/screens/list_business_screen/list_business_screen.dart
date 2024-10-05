import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/screens/list_business_screen/second_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_field2.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class ListBusinessScreen extends StatefulWidget {
  const ListBusinessScreen({Key? key}) : super(key: key);

  @override
  State<ListBusinessScreen> createState() => _ListBusinessScreenState();
}

class _ListBusinessScreenState extends State<ListBusinessScreen> {
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
      body:
      const _BuildBody(),
      // _BuildBody2(pageController: pageController, ),
      // const _BuildBody3(),
      //   ],
      // ),
    );
  }
}

class _BuildBody extends StatefulWidget {
  const _BuildBody({
    Key? key,
  }) : super(key: key);

  @override
  State<_BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<_BuildBody> {
  // final PageController pageController;
  TextEditingController bName = TextEditingController();

  TextEditingController person = TextEditingController();

  TextEditingController mobile = TextEditingController();

  TextEditingController pincode = TextEditingController();

  TextEditingController city = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(
              height: 5.h,
            ),
            CustomTextWithBackground(
              text: 'Here',
              textStyle: AppTextStyles.poppinsB1,
            ),
            const Gap(),
            Text(
              "Let's go",
              style: AppTextStyles.hintText2.copyWith(fontSize: 15.sp),
            ),
            RichText(
              text: TextSpan(
                text: 'Reach out to ',
                style: AppTextStyles.poppinsB1,
                children: <TextSpan>[
                  TextSpan(
                      text: '15 crore',
                      style: AppTextStyles.poppinsB1
                          .copyWith(color: const Color(0xff74CC7E))),
                  TextSpan(text: ' new', style: AppTextStyles.poppinsB1),
                ],
              ),
            ),
            Text(
              "customers",
              style: AppTextStyles.poppinsB1.copyWith(fontSize: 15.sp),
            ),
            const SizedBox(height: 25,),
            CustomTextField2(
              controller: bName,
              labelText: 'business name',
              prefixIcon: const CustomSvg(
                svgPath: Assets.businessName,
              ),
            ),
            const Gap(),
            CustomTextField2(
              controller: person,
              labelText: 'Contact person',
              prefixIcon: const CustomSvg(
                svgPath: Assets.contactPerson,
              ),
            ),
            const Gap(),
            CustomTextField2(
              controller: mobile,
              labelText: 'Mobile number',
              prefixIcon: const CustomSvg(
                svgPath: Assets.mobileNumber,
              ),
            ),
            const Gap(),
            CustomTextField2(
              controller: pincode,
              labelText: 'Pincode',
              prefixIcon: const CustomSvg(
                svgPath: Assets.pinCode,
              ),
            ),
            const Gap(),
            CustomTextField2(
              controller: city,
              labelText: 'City',
              prefixIcon: const CustomSvg(
                svgPath: Assets.pinCode,
              ),
            ),
            Gap(
              height: 5.h,
            ),
            Align(
              alignment: Alignment.center,
              child: CustomGradientButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListBusinessScreen2(
                                name: bName.text,
                                bperson: person.text,
                                bmobile: mobile.text,
                                bpincode: pincode.text,
                                bcity: city.text,
                              )));
                  // pageController.nextPage(
                  //   duration: const Duration(seconds: 1),
                  //   curve: Curves.easeIn,
                  // );
                },
                text: 'Next',
                inProgress: false,
                isVertical: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}





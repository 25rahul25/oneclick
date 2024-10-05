import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_icon_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_field.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../values/radius_constant.dart';

class CategoryScreenSecond extends StatelessWidget {
  const CategoryScreenSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        title: const CustomSvg(svgPath: Assets.logo),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(3.sp),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const CustomSvg(
              svgPath: Assets.backArrow,
              padding: EdgeInsets.all(RadiusConstants.borderRadius12),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 3.w),
            child: CustomIconButton(
              onTap: () {},
              svgPath: Assets.notificationIcon,
            ),
          ),
        ],
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
      child: const Column(
        children: [
          CustomTextField(
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 10),
              child: CustomSvg(svgPath: Assets.searchIcon),
            ),
            hintText: '  Search here',
          ),
          CustomListView()
        ],
      ),
    );
  }
}

class CustomListView extends StatefulWidget {
 const CustomListView({Key? key}) : super(key: key);

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  List<String> text = [
    'Daily needs',
    'Foods',
    'Automobiles',
    'Daily needs',
    'Foods',
    'Automobiles'
  ];

  List<String> subName = [
    'Movies',
    'Friuts &vegetables',
    'Grocery',
    'Movies',
    'Friuts &vegetables',
    'Grocery'
  ];

  List<String> imageName = [
    "assets/temp/product_item.png",
    "assets/temp/product_item.png",
    "assets/temp/product_item.png",
    "assets/temp/product_item.png",
    "assets/temp/product_item.png",
    "assets/temp/product_item.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: text.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(),
              CustomTextWithBackground(
                  text: text[index], textStyle: AppTextStyles.poppinsB1),
              const Gap(),
              SizedBox(
                height: 16.h,
                child: ListView.builder(
                  itemCount: subName.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(5.sp),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  offset: const Offset(
                                    1.2,
                                    1.9,
                                  ),
                                  spreadRadius: 0.1,
                                  color: AppColors.blackColor.withOpacity(0.1)),
                            ]),
                        height: 10.h,
                        width: 25.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              imageName[index],
                              height: 8.h,
                              width: 16.w,
                            ),
                            Text(subName[index]),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

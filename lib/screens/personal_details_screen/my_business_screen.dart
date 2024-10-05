import 'package:flutter/material.dart';
import 'package:one_click/screens/manage_product/Product_manage.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_icon_button.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../webearlProfile.dart';

class MyBusinessScreen extends StatelessWidget {
  const MyBusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _BuildDetailsTile();

  }
}

class _BuildDetailsTile extends StatelessWidget {
  const _BuildDetailsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
      return GestureDetector(
        onTap: (){
          if(index==0){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>const WebearlProfile() ,));
          }
        },
        child: Container(
          height: 24.h,
          margin: EdgeInsets.symmetric(
            vertical: 2.h,
            horizontal: 2.w,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 18.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Assets.companyDetailsBackground),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // const Gap(),
                          Column(
                            children: [
                              CustomIconButton(
                                height: 2.5.h,
                                onTap: () {},
                                svgPath: Assets.ocRatingStarIcon,
                                text: 'OC Rating',
                                textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
                              ),
                              CustomIconButton(
                                svgColor: AppColors.blackColor,
                                height: 2.5.h,
                                onTap: () {},
                                svgPath: Assets.editIconOption,
                                text: 'Edit Listing',
                                textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
                              ),
                            ],
                          ),
                          // const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 2.5.h,
                                onTap: () {},
                                svgPath: Assets.manageCampaignIcon,
                                text: 'Manage Campaign',
                                textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
                              ),
                              CustomIconButton(
                                height: 2.5.h,
                                onTap: () {},
                                svgPath: Assets.addIcon,
                                text: 'Add/Edit Deal',
                                textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
                              ),
                            ],
                          ),
                          // const Gap(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 11.h,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 22.sp,
                        backgroundImage:
                        const AssetImage("assets/temp/dummy_profile_image.png"),
                      ),
                      const Gap(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("WebEarl Tech", style: AppTextStyles.poppinsB2),
                          Text(
                            "Income Tax Ahmedabad",
                            style: AppTextStyles.hintText2,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });


  }
}

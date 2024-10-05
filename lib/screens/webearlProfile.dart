import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:one_click/screens/profile_screen.dart';
import '../utils/ui/app_text_style.dart';
import '../values/assets.dart';
import '../values/color_constant.dart';
import '../values/radius_constant.dart';
import '../widgets/custom_gradient_button.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_svg.dart';
import '../widgets/custom_text_with_background.dart';
import '../widgets/gap.dart';
import 'notification_screen.dart';

class WebearlProfile extends StatefulWidget {
  const WebearlProfile({super.key});

  @override
  State<WebearlProfile> createState() => _WebearlProfileState();
}

class _WebearlProfileState extends State<WebearlProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(height: 0.5.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ProfileScreen(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 18.sp,
                          backgroundImage:
                          const AssetImage("assets/temp/dummy_profile_image.png"),
                        ),
                      ),
                      const CustomSvg(svgPath: Assets.logo),
                      CustomIconButton(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const NotificationScreen(),
                            ),
                          );
                        },
                        svgPath: Assets.notificationIcon,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h,),
                Container(
                  height: 76.h,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        height: 70.h,
                        width: 70.w,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.asset("assets/temp/webearlprofile.png",fit: BoxFit.cover,)),
                      ),
                      SizedBox(width: 10.w,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("  WebEarl Tech",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black),),
                          Text("  Bhat Circle, Ahmedabad",style: TextStyle(fontSize:12,fontWeight: FontWeight.w400,color: Colors.grey),),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Icon(Icons.star,color: Colors.yellow,),
                              Icon(Icons.star,color: Colors.yellow,),
                              Icon(Icons.star,color: Colors.yellow,),
                              Text("30 rating",style: TextStyle(fontSize:12,fontWeight: FontWeight.w400,color: Colors.grey),),

                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 5,),
                        Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    spreadRadius: 1,
                                    blurRadius: 3
                                )
                              ],
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child:Center(child: Image.asset("assets/temp/phone-call.png",height: 30,)),
                        ),
                        const SizedBox(width: 13,),
                        Container(
                          height: 40,
                          width: 40,
                          padding:const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    spreadRadius: 1,
                                    blurRadius: 3
                                )
                              ],
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child:Center(child: Image.asset("assets/temp/message-circle.png",height: 30,)),
                        ),
                        const SizedBox(width: 13,),
                        Container(
                          height: 40,
                          width: 40,
                          padding:const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    spreadRadius: 1,
                                    blurRadius: 3
                                )
                              ],
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child:Center(child: Image.asset("assets/temp/heart.png",height: 30,)),
                        ),
                      ],
                    ),
                    CustomGradientButton(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) =>  ,));
                      },
                      width: 190,
                      height: 47,
                      text: 'Manage Product',
                      inProgress: false,
                      isVertical: true,
                    ),
                  ],
                ),
                SizedBox(height: 30.h,),
                Container(
                  height: 43.h,
                  width: 346.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 43.h,
                        width: 149.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(width: 1,color: Colors.green.withOpacity(0.5))
                        ),
                        child: Center(
                          child: Text("Best Deal",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                        ),
                      ),
                      Container(
                        height: 43.h,
                        width: 186.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(width: 1,color: Colors.green.withOpacity(0.5))
                        ),
                        child: Center(
                          child: Text("Service Catalogue",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                        ),
                      ),

                    ],
                  ),
                ),
                Column(
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
                        ),

                      ],
                    ),SizedBox(height: 200,),
                    Center(
                      child: CustomGradientButton(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) =>  ,));
                        },
                        width: 356.w,
                        height: 47,
                        text: 'Promote Now',
                        inProgress: false,
                        isVertical: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}

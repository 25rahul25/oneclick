import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_click/screens/profile_screen.dart';

import '../values/assets.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_svg.dart';
import '../widgets/custom_text_with_background.dart';
import '../widgets/gap.dart';
import 'notification_screen.dart';

class SellingInquiryList extends StatefulWidget {
  const SellingInquiryList({super.key});

  @override
  State<SellingInquiryList> createState() => _SellingInquiryListState();
}

class _SellingInquiryListState extends State<SellingInquiryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
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
            SizedBox(height: 20.h,),
            const Center(child: CustomTextWithBackground(text: 'Selling Inquiry List')),
            SizedBox(height: 30.h,),
            SizedBox(height: 800.h,
            child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 30,right: 30,bottom: 15),
                    padding: const EdgeInsets.all(10),
                    height: 265.h,
                    width: 350.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2,color: Colors.green)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Name :",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w600),),
                            Text(" Rahul Sharma",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Product Name :",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w600),),
                            Text(" Nike",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Email ID :",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w600),),
                            Text(" rahul@gmail.com",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Phone Number :",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w600),),
                            Text(" +91-1234567890",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Address :",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w600),),
                            Text(" Ahmedabad Near nava vadaj",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Permanent Address :",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w600),),
                            Text(" Ahmedabad Near",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Text("nava vadaj",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500),),
                        Row(
                          children: [
                            Text("State :",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w600),),
                            Text(" Gujarat",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Country :",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w600),),
                            Text(" India",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    ),
                  );
                },),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

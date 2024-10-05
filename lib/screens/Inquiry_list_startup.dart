import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_click/screens/profile_screen.dart';

import '../utils/ui/app_text_style.dart';
import '../values/assets.dart';
import '../values/color_constant.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_svg.dart';
import '../widgets/gap.dart';
import 'notification_screen.dart';

class InquiryListStartup extends StatefulWidget {
  const InquiryListStartup({super.key});

  @override
  State<InquiryListStartup> createState() => _InquiryListStartupState();
}

class _InquiryListStartupState extends State<InquiryListStartup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
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
                  height: 74.h,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        height: 64.h,
                        width: 64.w,
                        child: Image.asset('assets/temp/dummy_profile_image.png'),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Maria Seth",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
                          Text("2 Posts | 130 Followers",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey),),
            
                        ],
                      ),
            
            
                    ],
                  ),
                ),
                const Gap(),
                const Text("My Inquiry",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
                const Gap(),
                SizedBox(
                  height: 800.h,
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Stack(
                          children:[
                            Container(
                              margin:const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow:const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0.3,
                                        blurRadius: 4
                                    )
                                  ]
                              ),
                              child: ListTile(
                                leading: Stack(
                                    children:[ Image.asset("assets/temp/product_item.png",
                                        fit: BoxFit.cover),
                                      const Positioned(
                                          child: Text("RFQ",style: TextStyle(fontSize: 14),))
                                    ]
                                ),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Round toe leather loafer\nshoe(Black)',
                                      style: AppTextStyles.poppinsB3,
                                    ),
                                    Text(
                                      'Rainbow shoes & enterprise',
                                      style: AppTextStyles.poppinsB4,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.date_range_outlined,color: Colors.green,),
                                        Text(
                                          '16/04/2024',
                                          style: AppTextStyles.poppinsB3,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

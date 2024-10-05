import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_click/screens/Inquiry_list_startup.dart';
import 'package:one_click/screens/chat_user.dart';
import 'package:one_click/screens/profile_screen.dart';

import '../utils/ui/app_text_style.dart';
import '../values/assets.dart';
import '../values/color_constant.dart';
import '../widgets/custom_gradient_button.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_svg.dart';
import '../widgets/gap.dart';
import 'notification_screen.dart';

class InquiryList extends StatefulWidget {
  const InquiryList({super.key});

  @override
  State<InquiryList> createState() => _InquiryListState();
}

class _InquiryListState extends State<InquiryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding:const EdgeInsets.symmetric(horizontal: 15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
                height: 70.h,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      height: 70.h,
                      width: 70.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(45),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatUser(),));
                    },
                    width: 180,
                    height: 47,
                    text: 'My Inquiry',
                    inProgress: false,
                    isVertical: true,
                  ),
                ],
              ),
              SizedBox(height: 30.h,),
              const Text("My Inquiry",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
        
              const Gap(),
              Container(
                height: 500.h,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Stack(
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
                                        const CustomSvg(
                                          svgPath: Assets.locationIcon,height: 15,
                                        ),
                                        Text(
                                          'abc@gmail.com',
                                          style: AppTextStyles.poppinsB4,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const CustomSvg(
                                          svgPath: Assets.phoneCall,height: 15,
                                        ),
                                        Text(
                                          '1234567890',
                                          style: AppTextStyles.poppinsB3,
                                        ),
                                      ],
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
                      ),
                    );
                  },
                ),
              )
        
        
            ],
          ),
        ),
      ),
    );
  }
}

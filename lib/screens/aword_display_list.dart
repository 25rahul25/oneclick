import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_click/screens/profile_screen.dart';

import '../values/assets.dart';
import '../widgets/custom_gradient_button.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_svg.dart';
import '../widgets/gap.dart';
import 'notification_screen.dart';

class AwordDisplayList extends StatefulWidget {
  const AwordDisplayList({super.key});

  @override
  State<AwordDisplayList> createState() => _AwordDisplayListState();
}

class _AwordDisplayListState extends State<AwordDisplayList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                    width: 180,
                    height: 47,
                    text: 'My Inquiry',
                    inProgress: false,
                    isVertical: true,
                  ),
                ],
              ),
              SizedBox(height: 30.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Row(
                    children: [
                      const Text("Awards",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                      SizedBox(width: 10.w,),
                      Image.asset('assets/temp/list.png',height: 18,)
                    ],
                  ),
                  Row(
                    children: [
                      CustomGradientButton(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const InquiryListStartup(),));
                        },
                        width: 150,
                        height: 30,
                        text: '+ Add Awards',
                        inProgress: false,
                        isVertical: true,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.h,),
              Container(
                height: 110.h,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.only(top: 4,left: 8,right: 8),
                decoration: BoxDecoration(
                  boxShadow:const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius:0
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 140.w,
                      child: Image.asset('assets/temp/awords.png'),
                    ),
                    SizedBox(width: 15.w,),
                    Row(
                      children: [
                        Container(
                          height: 100.h,
                          width: 180.w,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bharat Ratna-1 st degree \nof honour",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("Ahmedabad",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("MEET MAGENTO INDIA",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("2017",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                        Container(
                          height: 100.h,
                          width: 21.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 21.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color(0xff74CC7E).withOpacity(0.5)
                                ),
                                child: const Icon(Icons.edit,color:Colors.green,size: 12,),
                              ),
                              Container(
                                height: 21.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color(0xffFF3900).withOpacity(0.5)
                                ),
                                child: const Icon(Icons.delete,color:Colors.red,size: 12,),
                              )
                            ],
                          ),
                        )
                      ],
                    )

                  ],
                ),
              ),

              Container(
                height: 110.h,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.only(top: 4,left: 8,right: 8),
                decoration: BoxDecoration(
                  boxShadow:const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius:0
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 140.w,
                      child: Image.asset('assets/temp/awords.png'),
                    ),
                    SizedBox(width: 15.w,),
                    Row(
                      children: [
                        Container(
                          height: 100.h,
                          width: 180.w,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bharat Ratna-1 st degree \nof honour",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("Ahmedabad",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("MEET MAGENTO INDIA",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("2017",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                        Container(
                          height: 100.h,
                          width: 21.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 21.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color(0xff74CC7E).withOpacity(0.5)
                                ),
                                child: const Icon(Icons.edit,color:Colors.green,size: 12,),
                              ),
                              Container(
                                height: 21.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color(0xffFF3900).withOpacity(0.5)
                                ),
                                child: const Icon(Icons.delete,color:Colors.red,size: 12,),
                              )
                            ],
                          ),
                        )
                      ],
                    )

                  ],
                ),
              ),

              Container(
                height: 110.h,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.only(top: 4,left: 8,right: 8),
                decoration: BoxDecoration(
                  boxShadow:const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius:0
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 140.w,
                      child: Image.asset('assets/temp/awords.png'),
                    ),
                    SizedBox(width: 15.w,),
                    Row(
                      children: [
                        Container(
                          height: 100.h,
                          width: 180.w,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bharat Ratna-1 st degree \nof honour",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("Ahmedabad",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("MEET MAGENTO INDIA",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("2017",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                        Container(
                          height: 100.h,
                          width: 21.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 21.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color(0xff74CC7E).withOpacity(0.5)
                                ),
                                child: const Icon(Icons.edit,color:Colors.green,size: 12,),
                              ),
                              Container(
                                height: 21.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color(0xffFF3900).withOpacity(0.5)
                                ),
                                child: const Icon(Icons.delete,color:Colors.red,size: 12,),
                              )
                            ],
                          ),
                        )
                      ],
                    )

                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text("Certificates",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                    ],
                  ),
                  Row(
                    children: [
                      CustomGradientButton(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const InquiryListStartup(),));
                        },
                        width: 160,
                        height: 30,
                        text: '+ Add Certificates',
                        inProgress: false,
                        isVertical: true,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.h,),
              Container(
                height: 110.h,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.only(top: 4,left: 8,right: 8),
                decoration: BoxDecoration(
                  boxShadow:const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius:0
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 140.w,
                      child: Image.asset('assets/temp/awords.png'),
                    ),
                    SizedBox(width: 15.w,),
                    Row(
                      children: [
                        Container(
                          height: 100.h,
                          width: 180.w,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bharat Ratna-1 st degree \nof honour",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("Ahmedabad",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("MEET MAGENTO INDIA",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("2017",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                        Container(
                          height: 100.h,
                          width: 21.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 21.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color(0xff74CC7E).withOpacity(0.5)
                                ),
                                child: const Icon(Icons.edit,color:Colors.green,size: 12,),
                              ),
                              Container(
                                height: 21.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color(0xffFF3900).withOpacity(0.5)
                                ),
                                child: const Icon(Icons.delete,color:Colors.red,size: 12,),
                              )
                            ],
                          ),
                        )
                      ],
                    )

                  ],
                ),
              ),

              Container(
                height: 110.h,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.only(top: 4,left: 8,right: 8),
                decoration: BoxDecoration(
                  boxShadow:const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius:0
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 140.w,
                      child: Image.asset('assets/temp/awords.png'),
                    ),
                    SizedBox(width: 15.w,),
                    Row(
                      children: [
                        Container(
                          height: 100.h,
                          width: 180.w,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bharat Ratna-1 st degree \nof honour",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("Ahmedabad",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("MEET MAGENTO INDIA",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("2017",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                        Container(
                          height: 100.h,
                          width: 21.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 21.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color(0xff74CC7E).withOpacity(0.5)
                                ),
                                child: const Icon(Icons.edit,color:Colors.green,size: 12,),
                              ),
                              Container(
                                height: 21.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color(0xffFF3900).withOpacity(0.5)
                                ),
                                child: const Icon(Icons.delete,color:Colors.red,size: 12,),
                              )
                            ],
                          ),
                        )
                      ],
                    )

                  ],
                ),
              ),

              Container(
                height: 110.h,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.only(top: 4,left: 8,right: 8),
                decoration: BoxDecoration(
                  boxShadow:const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius:0
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 140.w,
                      child: Image.asset('assets/temp/awords.png'),
                    ),
                    SizedBox(width: 15.w,),
                    Row(
                      children: [
                        Container(
                          height: 100.h,
                          width: 180.w,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bharat Ratna-1 st degree \nof honour",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("Ahmedabad",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("MEET MAGENTO INDIA",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                              Text("2017",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                        Container(
                          height: 100.h,
                          width: 21.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 21.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color(0xff74CC7E).withOpacity(0.5)
                                ),
                                child: const Icon(Icons.edit,color:Colors.green,size: 12,),
                              ),
                              Container(
                                height: 21.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color(0xffFF3900).withOpacity(0.5)
                                ),
                                child: const Icon(Icons.delete,color:Colors.red,size: 12,),
                              )
                            ],
                          ),
                        )
                      ],
                    )

                  ],
                ),
              ),




            ],

          ),
        ),
      ) ,
    );
  }
}

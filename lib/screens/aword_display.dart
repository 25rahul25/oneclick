import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_click/screens/profile_screen.dart';

import '../values/assets.dart';
import '../widgets/custom_gradient_button.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_svg.dart';
import '../widgets/gap.dart';
import 'notification_screen.dart';

class AwordDisplay extends StatefulWidget {
  const AwordDisplay({super.key});

  @override
  State<AwordDisplay> createState() => _AwordDisplayState();
}

class _AwordDisplayState extends State<AwordDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
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

                SizedBox(
                  height: 600,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder:
                      (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text("Awards",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                                Icon(Icons.menu,color: Color(0xff74CC7E),)
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
                          height: 173.h,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 172.h,
                                width: 179.w,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0,
                                        blurRadius: 0.1,

                                      )
                                    ]
                                ),
                                padding: const EdgeInsets.only(top: 7,left: 10,right: 10,bottom: 7),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 110.h,
                                      width: 157.w,
                                      child: Image.asset('assets/temp/awords.png',fit: BoxFit.cover,),
                                    ),
                                    const Text("Bharat Ratna-1 st degree of ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Row(
                                          children: [
                                            Text("  honour. ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xff74CC7E).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.edit,color:Colors.green,size: 10,),
                                            ),
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xffFF3900).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.delete,color:Colors.red,size: 10,),
                                            )
                                          ],
                                        )

                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 172.h,
                                width: 179.w,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0,
                                        blurRadius: 0.1,

                                      )
                                    ]
                                ),
                                padding: const EdgeInsets.only(top: 7,left: 10,right: 10,bottom: 7),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 110.h,
                                      width: 157.w,
                                      child: Image.asset('assets/temp/awords.png',fit: BoxFit.cover,),
                                    ),
                                    const Text("Bharat Ratna-1 st degree of ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Row(
                                          children: [
                                            Text("  honour. ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xff74CC7E).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.edit,color:Colors.green,size: 10,),
                                            ),
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xffFF3900).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.delete,color:Colors.red,size: 10,),
                                            )
                                          ],
                                        )

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 20.h,),
                        Container(
                          height: 173.h,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 172.h,
                                width: 179.w,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0,
                                        blurRadius: 0.1,

                                      )
                                    ]
                                ),
                                padding: const EdgeInsets.only(top: 7,left: 10,right: 10,bottom: 7),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 110.h,
                                      width: 157.w,
                                      child: Image.asset('assets/temp/awords.png',fit: BoxFit.cover,),
                                    ),
                                    const Text("Bharat Ratna-1 st degree of ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Row(
                                          children: [
                                            Text("  honour. ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xff74CC7E).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.edit,color:Colors.green,size: 10,),
                                            ),
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xffFF3900).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.delete,color:Colors.red,size: 10,),
                                            )
                                          ],
                                        )

                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 172.h,
                                width: 179.w,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0,
                                        blurRadius: 0.1,

                                      )
                                    ]
                                ),
                                padding: const EdgeInsets.only(top: 7,left: 10,right: 10,bottom: 7),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 110.h,
                                      width: 157.w,
                                      child: Image.asset('assets/temp/awords.png',fit: BoxFit.cover,),
                                    ),
                                    const Text("Bharat Ratna-1 st degree of ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Row(
                                          children: [
                                            Text("  honour. ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xff74CC7E).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.edit,color:Colors.green,size: 10,),
                                            ),
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xffFF3900).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.delete,color:Colors.red,size: 10,),
                                            )
                                          ],
                                        )

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),


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

                        Container(
                          height: 173.h,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 172.h,
                                width: 179.w,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0,
                                        blurRadius: 0.1,

                                      )
                                    ]
                                ),
                                padding: const EdgeInsets.only(top: 7,left: 10,right: 10,bottom: 7),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 110.h,
                                      width: 157.w,
                                      child: Image.asset('assets/temp/awords.png',fit: BoxFit.cover,),
                                    ),
                                    const Text("Bharat Ratna-1 st degree of ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Row(
                                          children: [
                                            Text("  honour. ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xff74CC7E).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.edit,color:Colors.green,size: 10,),
                                            ),
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xffFF3900).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.delete,color:Colors.red,size: 10,),
                                            )
                                          ],
                                        )

                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 172.h,
                                width: 179.w,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0,
                                        blurRadius: 0.1,

                                      )
                                    ]
                                ),
                                padding: const EdgeInsets.only(top: 7,left: 10,right: 10,bottom: 7),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 110.h,
                                      width: 157.w,
                                      child: Image.asset('assets/temp/awords.png',fit: BoxFit.cover,),
                                    ),
                                    const Text("Bharat Ratna-1 st degree of ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Row(
                                          children: [
                                            Text("  honour. ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xff74CC7E).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.edit,color:Colors.green,size: 10,),
                                            ),
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xffFF3900).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.delete,color:Colors.red,size: 10,),
                                            )
                                          ],
                                        )

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h,),
                        Container(
                          height: 173.h,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 172.h,
                                width: 179.w,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0,
                                        blurRadius: 0.1,

                                      )
                                    ]
                                ),
                                padding: const EdgeInsets.only(top: 7,left: 10,right: 10,bottom: 7),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 110.h,
                                      width: 157.w,
                                      child: Image.asset('assets/temp/awords.png',fit: BoxFit.cover,),
                                    ),
                                    const Text("Bharat Ratna-1 st degree of ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Row(
                                          children: [
                                            Text("  honour. ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xff74CC7E).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.edit,color:Colors.green,size: 10,),
                                            ),
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xffFF3900).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.delete,color:Colors.red,size: 10,),
                                            )
                                          ],
                                        )

                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 172.h,
                                width: 179.w,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0,
                                        blurRadius: 0.1,

                                      )
                                    ]
                                ),
                                padding: const EdgeInsets.only(top: 7,left: 10,right: 10,bottom: 7),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 110.h,
                                      width: 157.w,
                                      child: Image.asset('assets/temp/awords.png',fit: BoxFit.cover,),
                                    ),
                                    const Text("Bharat Ratna-1 st degree of ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Row(
                                          children: [
                                            Text("  honour. ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11,color: Colors.black),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xff74CC7E).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.edit,color:Colors.green,size: 10,),
                                            ),
                                            Container(
                                              height: 21.h,
                                              width: 21.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(11),
                                                  color: const Color(0xffFF3900).withOpacity(0.5)
                                              ),
                                              child: const Icon(Icons.delete,color:Colors.red,size: 10,),
                                            )
                                          ],
                                        )

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },),
                ),




              ],
            ),
          ),
        ),
      ) ,
    );
  }
}

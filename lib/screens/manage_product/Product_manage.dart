import 'package:flutter/material.dart';
import 'package:one_click/inquiry_form.dart';
import 'package:one_click/screens/inquiry_list_user.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';
import '../../values/color_constant.dart';
import '../../values/assets.dart';
import '../../utils/ui/app_text_style.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_gradient_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_svg.dart';
import '../../widgets/custom_text_with_background.dart';

class ProductManage extends StatefulWidget {
  const ProductManage({super.key});

  @override
  State<ProductManage> createState() => _ProductManageState();
}

class _ProductManageState extends State<ProductManage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title:  GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child:const CustomSvg(svgPath: Assets.logo)),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(3.sp),
          child: CircleAvatar(
            radius: 18.sp,
            backgroundImage:
            const AssetImage("assets/temp/dummy_profile_image.png"),
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
      body: SingleChildScrollView(
        child: Container(
          margin:const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 125,
                          width: 115,
                  child: Image.asset("assets/temp/boot.png",)),
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8,),
                      Row(
                        children: [
                          Text(
                          "Rainbow shoes and Enterprice ",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
                                              ),
                          CustomSvg(
                            svgPath: Assets.rightBackArrow,height: 22,color: Color(0xff74CC7E),
                          ),
                        ],
                      ),
                     Text(
              "This pack contains a technical spec\ndrawing is a fully ...",
              style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500),
            ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 2,),
                            CustomSvg(
                                svgPath: Assets.locationIcon,height: 15,),
                            Text(
                              ' Ahmedabad',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        Row(
                          children: [
                           Icon(Icons.star,color: Colors.yellow,size: 19,),
                            Text(
                              ' 3.0(52 review)',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

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
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const InquiryList(),));
                    },
                    width: 180,
                    height: 47,
                    text: 'Manage Product',
                    inProgress: false,
                    isVertical: true,
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Stack(
                children:[ Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  padding:const EdgeInsets.only(left: 10,top: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: const[
                      BoxShadow(color: Colors.grey,
                      blurRadius: 0.8,
                      spreadRadius: .1)
                    ]
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20.sp,
                            backgroundImage:
                            const AssetImage("assets/temp/dummy_profile_image.png"),
                          ),
                          const SizedBox(width: 15,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rainbow shoes and Enterprice ",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "4 years of exhibition",
                                style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),

                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Row(
                       children: [
                       Row(
                         children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   SizedBox(height: 20,),
                                   Icon(Icons.location_on,color: Colors.grey,size: 20),
                                   Text(
                                     " 22,Credle,Near Apollo Hospital",
                                     style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500),
                                   ),

                                 ],
                               ),
                               Text(
                                 "      Bhat Circle,Ahmedabad-38253",
                                 style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500),
                               ),
                               SizedBox(height: 5,),
                               Row(
                                 children: [
                                   SizedBox(height: 20,),
                                   Icon(Icons.call,color: Colors.grey,size: 20),
                                   Text(
                                     " +91 9033251903",
                                     style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500),
                                   ),

                                 ],
                               ),

                               SizedBox(height: 5,),
                               Row(
                                 children: [
                                   SizedBox(height: 20,),
                                   Icon(Icons.link,color: Colors.grey,size: 20),
                                   Text(
                                     "  www.webearl.com",
                                     style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500),
                                   ),

                                 ],
                               ),
                             ],
                           )
                         ],

                       ),
                       ],
                     ),
                      const SizedBox(height: 5,),
                      const Row(
                        children: [
                          SizedBox(height: 20,),
                          Icon(Icons.shopping_bag_outlined,color: Colors.grey,size: 20),
                          Text(
                            " Open Now",
                            style: TextStyle(fontSize: 16,color: Color(0xff00818A),fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5,),
                      const Row(
                        children: [
                          Text(
                            "      Time -",
                            style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w600),
                          ),
                          Text(
                            " 09:30am to 6.30pm",
                            style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w500),
                          ),
                          Text(
                            " | Monaday to  Sunday",
                            style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w600),
                          ),

                        ],
                      ),
                      const SizedBox(height: 5,),
                      const Row(
                        children: [
                          SizedBox(height: 20,),
                          Icon(Icons.shopping_bag_outlined,color: Colors.grey,size: 20,),
                          Text(
                            " Register us-",
                            style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                    ],
                  )
                ),
                  Positioned(
                    right:10,
                      top: 60,
                      child:Image.asset("assets/temp/map.png",height: 130,width: 118,) )
            ]
              ),
              const Gap(),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomTextWithBackground(
                  text: 'Incubation centre',
                  textStyle: AppTextStyles.poppinsB2
                      .copyWith(color: AppColors.secondaryColor, fontSize: 15.sp),
                ),
              ),
              const Gap(),
              Stack(
                  children:[ Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      padding:const EdgeInsets.only(left: 10,top: 25),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow:const [
                            BoxShadow(color: Colors.grey,
                                blurRadius: 0.8,
                                spreadRadius: .1)
                          ]
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20.sp,
                                backgroundImage:
                                const AssetImage("assets/temp/dummy_profile_image.png"),
                              ),
                              const SizedBox(width: 15,),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rainbow shoes and Enterprice ",
                                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "4 years of exhibition",
                                    style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),

                            ],
                          ),
                          const SizedBox(height: 10,),
                          const Row(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(height: 20,),
                                          Icon(Icons.location_on,color: Colors.grey,size: 20),
                                          Text(
                                            " 22,Credle,Near Apollo Hospital",
                                            style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500),
                                          ),

                                        ],
                                      ),
                                      Text(
                                        "      Bhat Circle,Ahmedabad-38253",
                                        style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          SizedBox(height: 20,),
                                          Icon(Icons.call,color: Colors.grey,size: 20),
                                          Text(
                                            " +91 9033251903",
                                            style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500),
                                          ),

                                        ],
                                      ),

                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          SizedBox(height: 20,),
                                          Icon(Icons.link,color: Colors.grey,size: 20),
                                          Text(
                                            "  www.webearl.com",
                                            style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500),
                                          ),

                                        ],
                                      ),
                                    ],
                                  )
                                ],

                              ),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          const Row(
                            children: [
                              SizedBox(height: 20,),
                              Icon(Icons.shopping_bag_outlined,color: Colors.grey,size: 20),
                              Text(
                                " Open Now",
                                style: TextStyle(fontSize: 16,color: Color(0xff00818A),fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          const Row(
                            children: [
                              Text(
                                "      Time -",
                                style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w600),
                              ),
                              Text(
                                " 09:30am to 6.30pm",
                                style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w500),
                              ),
                              Text(
                                " | Monaday to  Sunday",
                                style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w600),
                              ),

                            ],
                          ),
                          const SizedBox(height: 5,),
                          const Row(
                            children: [
                              SizedBox(height: 20,),
                              Icon(Icons.shopping_bag_outlined,color: Colors.grey,size: 20,),
                              Text(
                                " Register us-",
                                style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),

                        ],
                      )
                  ),
                    Positioned(
                        right:10,
                        top: 60,
                        child:Image.asset("assets/temp/map.png",height: 130,width: 118,) )
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }

}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../values/assets.dart';
import '../values/radius_constant.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_svg.dart';
import '../widgets/custom_text_with_background.dart';

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({super.key});

  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            CustomAppBar(
              title: CustomTextWithBackground(text: 'Start-ups'),

              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CustomSvg(
                  svgPath: Assets.backArrow,
                  padding: EdgeInsets.all(RadiusConstants.borderRadius12),
                ),
              ),
            ),
            SizedBox(height: 40.h,),
            Container(
              height: 150.h,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.companyDetailsBackground),
                  fit: BoxFit.fill,
                ),
                color: Color(0xff74CC7E).withOpacity(0.02),
                borderRadius: BorderRadius.circular(20),

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 65.h,
                    width: 65.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.asset("assets/temp/dummy_profile_image.png"),
                    ),
                  ),
                  SizedBox(width: 15.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Text("Maria Seth",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          SizedBox(width: 150.h,),
                          Icon(Icons.delete,color: Colors.red,),
                          SizedBox(width: 5.w,),
                          Icon(Icons.edit)
                        ],
                      ),
                      Text("2 Posts | 130 Followers",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,color: Colors.green,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Amreli, Gujrat ,india",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                              Text("Bhavanagar",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                            ],
                          ),
                          SizedBox(width: 30.w,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Icon(Icons.star,color: Colors.yellow,),
                              Icon(Icons.star_border),
                              Icon(Icons.star_border),
                              Icon(Icons.star_border),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Container(
                        height: 37.h,
                        width: 219.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              spreadRadius:0,
                              blurRadius: 1
                            )

                          ]
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 8,),
                              Icon(Icons.location_on_outlined,color: Colors.green,size: 20,),
                              SizedBox(width: 6,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Krishna bunglow, Gujrat ,india",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.grey),),
                                  Text("Bhavanagar",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.grey),),
                                ],
                              ),
                            ],

                        ),
                      )
                    ],
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              height: 150.h,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.companyDetailsBackground),
                  fit: BoxFit.fill,
                ),
                color: Color(0xff74CC7E).withOpacity(0.02),
                borderRadius: BorderRadius.circular(20),

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 65.h,
                    width: 65.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.asset("assets/temp/dummy_profile_image.png"),
                    ),
                  ),
                  SizedBox(width: 15.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Text("Maria Seth",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          SizedBox(width: 150.h,),
                          Icon(Icons.delete,color: Colors.red,),
                          SizedBox(width: 5.w,),
                          Icon(Icons.edit)
                        ],
                      ),
                      Text("2 Posts | 130 Followers",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,color: Colors.green,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Amreli, Gujrat ,india",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                              Text("Bhavanagar",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                            ],
                          ),
                          SizedBox(width: 30.w,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Icon(Icons.star,color: Colors.yellow,),
                              Icon(Icons.star_border),
                              Icon(Icons.star_border),
                              Icon(Icons.star_border),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Container(
                        height: 37.h,
                        width: 219.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  spreadRadius:0,
                                  blurRadius: 1
                              )

                            ]
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 8,),
                            Icon(Icons.location_on_outlined,color: Colors.green,size: 20,),
                            SizedBox(width: 6,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Krishna bunglow, Gujrat ,india",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.grey),),
                                Text("Bhavanagar",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.grey),),
                              ],
                            ),
                          ],

                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}

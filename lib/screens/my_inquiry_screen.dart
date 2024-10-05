import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../values/assets.dart';
import '../values/radius_constant.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_gradient_button.dart';
import '../widgets/custom_svg.dart';
import '../widgets/custom_text_with_background.dart';

class MyInquiryScreens extends StatefulWidget {
  const MyInquiryScreens({super.key});

  @override
  State<MyInquiryScreens> createState() => _MyInquiryScreensState();
}

class _MyInquiryScreensState extends State<MyInquiryScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            CustomAppBar(
              title: CustomTextWithBackground(text: 'My Inquiry'),
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
              height: 146.h,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
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
                      child: Image.asset("assets/temp/showes.jpeg",fit: BoxFit.cover,),
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
                              Text("Start- Up Name",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                            ],
                          ),
                          SizedBox(width: 135.h,),
                         Text("Inquiry Date",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey,))
                        ],
                      ),
                      Row(
                        children: [
                          Text("Webreal",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),),
                          SizedBox(width: 176.h,),
                          Text("23/04/24",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),),
                        ],
                      ),
                      Text("Product Name",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey,)),
                      Text("Puma shoes",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,)),

                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: CustomGradientButton(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) =>  ,));
                          },
                          width: 132,
                          height: 41,
                          text: 'View',
                          inProgress: false,
                          isVertical: true,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              height: 146.h,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
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
                      child: Image.asset("assets/temp/showes.jpeg",fit: BoxFit.cover,),
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
                              Text("Start- Up Name",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                            ],
                          ),
                          SizedBox(width: 135.h,),
                          Text("Inquiry Date",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey,))
                        ],
                      ),
                      Row(
                        children: [
                          Text("Webreal",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),),
                          SizedBox(width: 176.h,),
                          Text("23/04/24",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),),
                        ],
                      ),
                      Text("Product Name",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey,)),
                      Text("Puma shoes",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,)),

                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: CustomGradientButton(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) =>  ,));
                          },
                          width: 132,
                          height: 41,
                          text: 'View',
                          inProgress: false,
                          isVertical: true,
                        ),
                      ),
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

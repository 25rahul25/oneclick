import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:one_click/screens/profile_screen.dart';

import '../values/assets.dart';
import '../values/radius_constant.dart';
import '../widgets/custom_gradient_button.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_svg.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/gap.dart';
import 'notification_screen.dart';

class AddAwords extends StatefulWidget {
  const AddAwords({super.key});

  @override
  State<AddAwords> createState() => _AddAwordsState();
}

class _AddAwordsState extends State<AddAwords> {
  @override
  Widget build(BuildContext context) {
    TextEditingController cnameController = TextEditingController();
    TextEditingController desController = TextEditingController();
    TextEditingController achiveController = TextEditingController();
    TextEditingController yearachiveController = TextEditingController();
    TextEditingController wonachiveController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 15),
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
                Center(child: Text("Add Awards",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),)),
                    
                SizedBox(
                  height: 600,
                  child: ListView.builder(
                    itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Description",style: TextStyle(fontSize: 15,color: Colors.grey),),
                            CustomTextField(
                              validator: RequiredValidator(errorText: "Can't be empty"),
                              controller: desController,
                              hintText: "",
                              maxLines: 5,
                            ),
                            SizedBox(height: 10.h,),
                    
                            Text("Competition Name",style: TextStyle(fontSize: 15,color: Colors.grey),),
                            CustomTextField(
                              validator: RequiredValidator(errorText: "Can't be empty"),
                              controller: cnameController,
                              hintText: "",
                            ),
                            SizedBox(height: 10.h,),
                            Text("Achievement Title",style: TextStyle(fontSize: 15,color: Colors.grey),),
                            CustomTextField(
                              validator: RequiredValidator(errorText: "Can't be empty"),
                              controller: achiveController,
                              hintText: "",
                            ),
                            SizedBox(height: 10.h,),
                            Text("Place You Won Achievement",style: TextStyle(fontSize: 15,color: Colors.grey),),
                            CustomTextField(
                              validator: RequiredValidator(errorText: "Can't be empty"),
                              controller: wonachiveController,
                              hintText: "",
                            ),
                            SizedBox(height: 10.h,),
                            Text("Year You Won Achievement",style: TextStyle(fontSize: 15,color: Colors.grey),),
                            CustomTextField(
                              validator: RequiredValidator(errorText: "Can't be empty"),
                              controller: yearachiveController,
                              hintText: "",
                            ),
                            SizedBox(height: 30.h,),
                            Center(
                              child: CustomGradientButton(
                                inProgress: false,
                                isVertical: true,
                                height: 50.h,
                                borderRadius: RadiusConstants.borderRadius12,
                                width: 300.w,
                                onTap: (){},
                                // _handleOnPressed(context: context),
                                text: 'Save',
                              ),
                            ),
                          ],
                        );
                      },),
                )
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}

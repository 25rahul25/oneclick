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
import '../widgets/custom_text_with_background.dart';
import '../widgets/gap.dart';
import 'notification_screen.dart';

class SellingInquiry extends StatefulWidget {
  const SellingInquiry({super.key});

  @override
  State<SellingInquiry> createState() => _SellingInquiryState();
}

class _SellingInquiryState extends State<SellingInquiry> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController fullNameController = TextEditingController();
    TextEditingController productController = TextEditingController();
    TextEditingController contactNumberController = TextEditingController();
    String selectedCountry = 'India';
    String selectedState = 'Gujrat';
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
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
                SizedBox(height: 20.h,),
                const Center(child: CustomTextWithBackground(text: 'Selling Inquiry Details')),
                SizedBox(height: 30.h,),
              SizedBox(height: 800.h,
              child: ListView.builder(
                itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Enter Your Name",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        CustomTextField(
                          validator: RequiredValidator(errorText: "Can't be empty"),
                          controller: fullNameController,
                          hintText: "",
                        ),
                        const Gap(),
                        const Text("Enter email id",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        CustomTextField(
                          validator: MultiValidator([
                            RequiredValidator(errorText: "Can't be empty"),
                            EmailValidator(errorText: 'Enter Valid Email'),
                          ]),
                          controller: emailController,
                          hintText: "",
                        ),
                        const Gap(),
                        const Text("Product Name",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        CustomTextField(
                          validator: RequiredValidator(errorText: "Can't be empty"),
                          controller: productController,
                          hintText: "",
                        ),
                        const Gap(),
                        const Text("Phone Number",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        CustomTextField(
                          validator: RequiredValidator(errorText: "Can't be empty"),
                          controller: contactNumberController,
                          hintText: 'Enter contact number',
                          textInputType: TextInputType.phone,
                          maxLenghth: 10,
                        ),
                        const Gap(),
                        const Text("Selected Country",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        Container(
                          height: 50.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1,color: Colors.grey.shade300)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: DropdownButton<String>(
                              hint: const Text(""),
                              icon: const Padding(
                                padding: EdgeInsets.only(left:255),
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                              underline: Container(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10),
                              value: selectedCountry,
                              onChanged: (newValue) {
                                setState(() {
                                  selectedCountry = newValue!;
                                });
                              },
                              items: <String>['India','India','India','India','India','India','India',]
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Center(
                                      child: Text(value)),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        const Gap(),
                        const Text("Selected State",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        Container(
                          height: 50.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1,color: Colors.grey.shade300)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: DropdownButton<String>(
                              hint: const Text(""),
                              icon: const Padding(
                                padding: EdgeInsets.only(left:255),
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                              underline: Container(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10),
                              value: selectedState,
                              onChanged: (newValue) {
                                setState(() {
                                  selectedState = newValue!;
                                });
                              },
                              items: <String>['Gujrat','Gujrat','Gujrat','Gujrat','Gujrat','Gujrat','Gujrat','Gujrat',]
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Center(
                                      child: Text(value)),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        const Gap(),
                        const Text("Addresh",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        CustomTextField(
                          validator: RequiredValidator(errorText: "Can't be empty"),
                          controller: contactNumberController,
                          hintText: '',
                          maxLines: 5,
                        ),
                        const Gap(),
                        const Text("Permanent Addresh",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        CustomTextField(
                          validator: RequiredValidator(errorText: "Can't be empty"),
                          controller: contactNumberController,
                          hintText: '',
                          maxLines: 5,
                        ),
                        const Gap(),
                        Row(
                          children: [
                            Container(
                              height: 20.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(width: 3,color: Colors.green)
                              ),
                            ),
                            SizedBox(width: 5.w,),
                            const Text("Same As Permanent Addresh",style: TextStyle(fontSize: 15,color: Colors.grey),),
                          ],
                        ),
                        const Gap(),
                        const Text("Enter The Quantity",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        CustomTextField(
                          validator: RequiredValidator(errorText: "Can't be empty"),
                          controller: contactNumberController,
                          hintText: '',
                        ),

                        SizedBox(height: 50.h,),
                        Center(
                          child: CustomGradientButton(
                            inProgress: false,
                            isVertical: true,
                            height: 50.h,
                            borderRadius: RadiusConstants.borderRadius12,
                            width: 300.w,
                            onTap: (){},
                            // _handleOnPressed(context: context),
                            text: 'Submit',
                          ),
                        ),
                        SizedBox(height: 50.h,),
                      ],
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

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

class AddStartUp extends StatefulWidget {
  const AddStartUp({super.key});

  @override
  State<AddStartUp> createState() => _AddStartUpState();
}

class _AddStartUpState extends State<AddStartUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController snameController = TextEditingController();
    TextEditingController aboutsController = TextEditingController();
    TextEditingController contectController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController contectpController = TextEditingController();
    TextEditingController incubcityController = TextEditingController();
    TextEditingController contryController = TextEditingController();
    TextEditingController pincodeController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    String selectedContry = 'India';
    String selectedState = 'Gujrat';
    String selectedCity = 'Ahmedabad';
    String selectedestabilished = '2001';
    String selectedCategory = 'showes';
    String selectedSubCat = 'show';
    String selectedRegister = 'yes';
    String selectedBuisnessC = 'Post';
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
                SizedBox(height: 30.h,),
                SizedBox(
                  height: 74.h,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 64.h,
                        width: 64.w,
                        child: Image.asset('assets/temp/dummy_profile_image.png'),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
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
                const Text("+ Add Start-Up",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                SizedBox(height: 10.h,),

                SizedBox(height: 700.h,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Start-up Name",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      CustomTextField(
                        validator: RequiredValidator(errorText: "Can't be empty"),
                        controller:snameController,
                        hintText: "",
                      ),
                      SizedBox(height: 10.h,),
                      const Text("About Startup",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      CustomTextField(
                        validator: RequiredValidator(errorText: "Can't be empty"),
                        controller:aboutsController,
                        maxLines: 7,
                        hintText: "",
                      ),
                      SizedBox(height: 10.h,),
                      const Text("Contact Number",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      CustomTextField(
                        validator: RequiredValidator(errorText: "Can't be empty"),
                        controller:contectController,
                        hintText: "",
                      ),
                      SizedBox(height: 10.h,),
                      const Text("Email ID",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      CustomTextField(
                        validator: RequiredValidator(errorText: "Can't be empty"),
                        controller:emailController,
                        hintText: "",
                      ),
                      SizedBox(height: 10.h,),

                      const Text("Contact Person",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      CustomTextField(
                        validator: RequiredValidator(errorText: "Can't be empty"),
                        controller:contectpController,
                        hintText: "",
                      ),
                      SizedBox(height: 10.h,),

                      const Text("Incubation Center",style: TextStyle(fontSize: 15,color: Colors.grey),),
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
                            value: selectedContry,
                            onChanged: (newValue) {
                              setState(() {
                                selectedContry = newValue!;
                              });
                            },
                            items: <String>['India''India''India''India''India''India']
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
                      SizedBox(height: 10.h,),

                      const Text("Incubation Center City",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      CustomTextField(
                        validator: RequiredValidator(errorText: "Can't be empty"),
                        controller:incubcityController,
                        hintText: "",
                      ),
                      SizedBox(height: 10.h,),

                      const Text("Select Country",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      CustomTextField(
                        validator: RequiredValidator(errorText: "Can't be empty"),
                        controller:contryController,
                        hintText: "",
                      ),
                      SizedBox(height: 10.h,),

                      const Text("Select State",style: TextStyle(fontSize: 15,color: Colors.grey),),
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
                      SizedBox(height: 10.h,),

                      const Text("Select City",style: TextStyle(fontSize: 15,color: Colors.grey),),
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
                            value: selectedCity,
                            onChanged: (newValue) {
                              setState(() {
                                selectedCity = newValue!;
                              });
                            },
                            items: <String>['Palanpur','Ahmedabad','Patan','Mehasana','Palanpur','Ahmedabad','Patan','Mehasana',]
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
                      SizedBox(height: 10.h,),

                      const Text("Enter Pincode",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      CustomTextField(
                        validator: RequiredValidator(errorText: "Can't be empty"),
                        controller:pincodeController,
                        hintText: "",
                      ),
                      SizedBox(height: 10.h,),

                      const Text("Select Years Of Estabilished",style: TextStyle(fontSize: 15,color: Colors.grey),),
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
                            value: selectedestabilished,
                            onChanged: (newValue) {
                              setState(() {
                                selectedestabilished = newValue!;
                              });
                            },
                            items: <String>['2001','2002','2003','2004']
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
                      SizedBox(height: 10.h,),

                      const Text("Select Start-Up Category",style: TextStyle(fontSize: 15,color: Colors.grey),),
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
                            value: selectedCategory,
                            onChanged: (newValue) {
                              setState(() {
                                selectedCategory = newValue!;
                              });
                            },
                            items: <String>['']
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
                      SizedBox(height: 10.h,),

                      const Text("Select Start-Up Sub Category",style: TextStyle(fontSize: 15,color: Colors.grey),),
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
                            value: selectedSubCat,
                            onChanged: (newValue) {
                              setState(() {
                                selectedSubCat = newValue!;
                              });
                            },
                            items: <String>['',]
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
                      SizedBox(height: 10.h,),

                      const Text("registered As",style: TextStyle(fontSize: 15,color: Colors.grey),),
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
                            value: selectedRegister,
                            onChanged: (newValue) {
                              setState(() {
                                selectedRegister = newValue!;
                              });
                            },
                            items: <String>['',]
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
                      SizedBox(height: 10.h,),

                      const Text("Business Category",style: TextStyle(fontSize: 15,color: Colors.grey),),
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
                            value: selectedBuisnessC,
                            onChanged: (newValue) {
                              setState(() {
                                selectedBuisnessC = newValue!;
                              });
                            },
                            items: <String>['',]
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
                      SizedBox(height: 10.h,),

                      const Text("Address",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      CustomTextField(
                        validator: RequiredValidator(errorText: "Can't be empty"),
                        controller:addressController,
                        hintText: "",
                        maxLines: 4,
                      ),

                      SizedBox(height: 10.h,),

                      const Text("Upload Image",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      CustomTextField(
                        validator: RequiredValidator(errorText: "Can't be empty"),
                        controller:addressController,
                        hintText: "",
                        maxLines: 5,
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
                          text: 'Add Start-Up',
                        ),
                      ),
                      SizedBox(height: 50.h,),
                    ],
                  );
                },),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

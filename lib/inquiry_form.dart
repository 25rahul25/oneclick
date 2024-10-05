import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:one_click/screens/inquiry_list_user.dart';
import 'package:one_click/screens/notification_screen.dart';
import 'package:one_click/screens/profile_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_icon_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_field.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';

class InquiryForm extends StatefulWidget {
  const InquiryForm({super.key});

  @override
  State<InquiryForm> createState() => _InquiryFormState();
}

class _InquiryFormState extends State<InquiryForm> {
  TextEditingController titleController = TextEditingController();
  TextEditingController desController = TextEditingController();
  TextEditingController contectController = TextEditingController();
  String _selectedGender = '10 to 11';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
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
                SizedBox(height: 35.h,),
                const Center(
                    child:
                CustomTextWithBackground(text: 'Inquiry Form')),
                SizedBox(height: 45.h,),
                    
                const Text("Title",style: TextStyle(fontSize: 15,color: Colors.grey),),
                CustomTextField(
                  validator: RequiredValidator(errorText: "Can't be empty"),
                  controller: titleController,
                  hintText: "",
                ),
                SizedBox(height: 10.h,),
                    
                const Text("Description",style: TextStyle(fontSize: 15,color: Colors.grey),),
                CustomTextField(
                  padding: EdgeInsets.all(10),
                  validator: RequiredValidator(errorText: "Can't be empty"),
                  controller: desController,
                  hintText: "",
                 // isPasswordField: true,
                  maxLines: 5,
                ),
                SizedBox(height: 10.h,),
                const Text("Best-Time To Connect",style: TextStyle(fontSize: 15,color: Colors.grey),),
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
                      hint: Text(""),
                      icon: const Padding(
                        padding: EdgeInsets.only(left:255),
                        child: Icon(Icons.keyboard_arrow_down),
                      ),
                      underline: Container(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                      value: _selectedGender,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedGender = newValue!;
                        });
                      },
                      items: <String>['10 to 11', '11 to 12','13 to 14', '14 to 15','15 to 16', '16 to 17','17 to 18', '18 to 19',]
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
                    
                SizedBox(height: 254.h,),
                
                Center(
                  child: InkWell(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ,));
                    },
                    child: CustomGradientButton(
                      inProgress: false,
                      height:50,
                      isVertical: true,
                      borderRadius: RadiusConstants.borderRadius12,
                      width:330,
                      onTap:null,
                      text: 'Submit',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

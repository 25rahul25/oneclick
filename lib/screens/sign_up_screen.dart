// ignore_for_file: must_be_immutable
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:one_click/Api/api.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/country/selection.dart';
import 'package:one_click/models/models/registration_model.dart';
import 'package:one_click/screens/login_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/utils/ui/image_picker_helper.dart';
import 'package:one_click/utils/ui/navigate_to_next_screen.dart';
import 'package:one_click/widgets/custom_button_with_gradient_border.dart';
import 'package:one_click/widgets/custom_drop_down_button.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/custom_text_field.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:one_click/widgets/unfocus_wrapper.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: UnFocusWrapper(
        child: Scaffold(
          body: _BuildBody(),
        ),
      ),
    );
  }
}

class _BuildBody extends StatefulWidget {
  const _BuildBody({Key? key}) : super(key: key);

  @override
  State<_BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<_BuildBody> {
  TextEditingController emailController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController contactNumberController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController pinCodeController = TextEditingController();

  LocationSelection locationSelection = LocationSelection();

  dynamic city;

  RegistrationModel regModel = RegistrationModel();

  dynamic state;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    getCountrys();
  }

  List<String> states = [];
  List<String> cityes = [];

  void getCountrys() async {
    await locationSelection.countryNameList();
    states = locationSelection.stateNameList("India");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    void loginScreenNavigator() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    }

    void customScaffold(String message) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    }

    void register() async {
      try {
        var response = await http.post(Uri.https(Apis.baseUrl, Apis.register), body: {
          "userName": fullNameController.text,
          "contact": contactNumberController.text,
          "email": emailController.text,
          "password": passwordController.text,
          "address": addressController.text,
          "city": city,
          "state": state,
          "pincode": pinCodeController.text,
        });
        if (response.statusCode == 200) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        } else {
          String errorMessage = "Mobile number is already registered"; // Default error message

          // Check response.statusCode to determine the specific error
          if (response.statusCode == 400) {
            // 409 status code typically indicates a conflict, such as duplicate registration
            if (response.body.contains("Email")) {
              errorMessage = "Email is already registered";
            } else if (response.body.contains("contact")) {
              errorMessage = "Mobile number is already registered";
            }
          }

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorMessage),
            ),
          );
        }

        print(response.body);
      } catch (e) {
        print(e);
      }
    }

    return Column(
      children: [
        const Gap(),
        Row(
          children: [
            const Gap(),
            const CustomSvg(svgPath: Assets.logo),
            const Spacer(),
            CustomButtonWithGradientBorder(
              onTap: () => navigateToNextScreen(
                context: context,
                nextScreen: const LoginScreen(),
              ),
              widget: Text(
                'Login',
                style: AppTextStyles.poppinsB2,
              ),
            ),
            const Gap(),
          ],
        ),
        Gap(height: 5.h),
        const CustomTextWithBackground(text: 'Create account'),
        const Gap(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Text(
            '''You are creating account on OneClick means you are agree with our Terms & conditions.''',
            style: AppTextStyles.hintText2.copyWith(fontSize: 10.sp),
            textAlign: TextAlign.center,
          ),
        ),
        const Gap(),
        Form(
          key: _formKey,
          child: Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: RawScrollbar(
                trackRadius: const Radius.circular(RadiusConstants.borderRadius20),
                thickness: 1.w,
                trackVisibility: true,
                thumbVisibility: true,
                trackColor: AppColors.secondaryColor.withOpacity(0.4),
                radius: const Radius.circular(RadiusConstants.borderRadius20),
                thumbColor: AppColors.secondaryColor,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  children: [
                    CustomTextField(
                      validator: RequiredValidator(errorText: "Can't be empty"),
                      controller: fullNameController,
                      hintText: "Enter full name",
                    ),
                    const Gap(),
                    CustomTextField(
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Can't be empty"),
                        EmailValidator(errorText: 'Enter Valid Email'),
                      ]),
                      controller: emailController,
                      hintText: "Enter email id",
                    ),
                    const Gap(),
                    CustomTextField(
                      validator: RequiredValidator(errorText: "Can't be empty"),
                      controller: passwordController,
                      hintText: "Password",
                      minLenghth: 8,
                      isPasswordField: true,
                    ),
                    const Gap(),
                    CustomTextField(
                      validator: RequiredValidator(errorText: "Can't be empty"),
                      controller: confirmPasswordController,
                      hintText: "Enter confirm password",
                      isPasswordField: true,
                      minLenghth: 8,
                    ),
                    const Gap(),
                    CustomTextField(
                      validator: RequiredValidator(errorText: "Can't be empty"),
                      controller: contactNumberController,
                      hintText: 'Enter contact number',
                      textInputType: TextInputType.phone,
                      maxLenghth: 10,
                    ),
                    Gap(height: 7.sp),
                    CustomDropDownButton(
                      hintText: 'State',
                      selectedItem: state,
                      itemList: states,
                      onChangedValue: (String? value) {
                        state = value;
                        cityes = locationSelection.cityNameList(state);
                        setState(() {});
                      },
                    ),
                    Gap(height: 7.sp),
                    CustomDropDownButton(
                      hintText: 'City',
                      selectedItem: city,
                      itemList: cityes,
                      onChangedValue: (String? value) {
                        setState(() {
                          city = value;
                        });
                      },
                    ),
                    Gap(height: 7.sp),
                    CustomTextField(
                      validator: RequiredValidator(errorText: "Can't be empty"),
                      controller: addressController,
                      hintText: 'Address',
                    ),
                    const Gap(),
                    CustomTextField(
                      validator: RequiredValidator(errorText: "Can't be empty"),
                      controller: pinCodeController,
                      hintText: 'Pin code',
                      maxLenghth: 6,
                    ),
                    const Gap(),
                    const _SelectImage()
                  ],
                ),
              ),
            ),
          ),
        ),
        const Gap(),
        CustomGradientButton(
          inProgress: false,
          height: 5.5.h,
          isVertical: true,
          borderRadius: RadiusConstants.borderRadius12,
          width: 90.w,
          onTap: () async {
            register();
          },
          text: 'Sign Up',
        ),
        const Gap(),
      ],
    );
  }
}

class _SelectImage extends StatefulWidget {
  const _SelectImage({Key? key}) : super(key: key);

  @override
  State<_SelectImage> createState() => _SelectImageState();
}

class _SelectImageState extends State<_SelectImage> {
  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await ImagePickerHelper.pickImage(ImageSource.gallery).then((value) {
          if (value != null) {
            setState(() {
              pickedImage = value;
            });
          }
        });
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 2.h),
        padding: EdgeInsets.symmetric(
          vertical: 3.h,
          horizontal: 4.w,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusConstants.borderRadius12),
          image: const DecorationImage(image: AssetImage(Assets.selectImageBorder), fit: BoxFit.fill),
        ),
        child: pickedImage != null
            ? Image.file(
                pickedImage!,
                fit: BoxFit.fitHeight,
                height: 14.h,
              )
            : Column(
                children: [
                  Icon(
                    Icons.image_outlined,
                    size: 50.sp,
                    color: AppColors.primaryColor,
                  ),
                  Text(
                    'Drop your image here or browse!',
                    style: AppTextStyles.poppinsB2,
                  ),
                  Text(
                    'Supports jpg, jpeg and png',
                    style: AppTextStyles.hintText2,
                  )
                ],
              ),
      ),
    );
  }

  // Future<Register> submitDate() async {
  //   var response = await http.post(Uri.https(authority));
  // }
}

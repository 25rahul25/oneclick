// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:one_click/api.dart';
import 'package:one_click/screens/forgot_password/forgot_password.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/models/models/login_model.dart';
import 'package:one_click/screens/bnb_screen.dart';
import 'package:one_click/screens/sign_up_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/utils/ui/navigate_to_next_screen.dart';
import 'package:one_click/widgets/check_box.dart';
import 'package:one_click/widgets/custom_button_with_gradient_border.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_field.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:one_click/widgets/unfocus_wrapper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnFocusWrapper(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          body: const BuildBody(),
          // ),
        ),
      ),
    );
  }
}

class BuildBody extends StatefulWidget {
  const BuildBody({Key? key}) : super(key: key);

  @override
  State<BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool checkBoxValue = false;

  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    // final inProgress = context.watch<LoginBloc>().state.status.isInProgress;

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                const Gap(),
                Row(
                  children: [
                    const CustomSvg(svgPath: Assets.logo),
                    const Spacer(),
                    CustomButtonWithGradientBorder(
                      onTap: () => navigateToNextScreen(
                        context: context,
                        nextScreen: const SignUpScreen(),
                      ),
                      widget: Text(
                        'Sign Up',
                        style: AppTextStyles.poppinsB2,
                      ),
                    ),
                  ],
                ),
                Gap(height: 15.h),
                const CustomTextWithBackground(text: 'Hey, John'),
                const Gap(),
                Text(
                  '''You are creating account on OneClick means you are agree with our Terms & conditions.''',
                  style: AppTextStyles.hintText2.copyWith(fontSize: 10.sp),
                  textAlign: TextAlign.center,
                ),
                const Gap(),
                CustomTextField(
                  hintText: 'Email',
                  controller: emailController,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Can't be empty"),
                    EmailValidator(errorText: 'Enter Valid Email'),
                  ]),
                ),
                Gap(height: 3.h),
                CustomTextField(
                  hintText: 'Password',
                  controller: passwordController,
                  isPasswordField: true,
                  minLenghth: 8,
                  validator: RequiredValidator(errorText: "Can't be empty"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckBox(
                      text: 'Remember Me',
                      value: checkBoxValue,
                      onChangedValue: (bool? value) {
                        checkBoxValue = value!;
                      },
                    ),
                    TextButton(
                      onPressed: () => navigateToNextScreen(
                        context: context,
                        nextScreen: const ForgotPassword(),
                      ),
                      child: Text(
                        'Forget password?',
                        style: AppTextStyles.poppinsB3,
                      ),
                    ),
                  ],
                ),
                Gap(height: 25.h),
                CustomGradientButton(
                  inProgress: false,
                  isVertical: true,
                  height: 5.5.h,
                  borderRadius: RadiusConstants.borderRadius12,
                  width: 90.w,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BnbScreen()));
                  },
                  // onTap: _onLoginClick,
                  // _handleOnPressed(context: context),
                  text: 'Login',
                ),
              ],
            ),
          ),
          if (isLoading) const CircularProgressIndicator()
        ],
      ),
    );
  }

  // LoginModel logindata = LoginModel();

  // void _onLoginClick() async {
  //   if (_formKey.currentState!.validate()) {
  //     setState(() {
  //       isLoading = true;
  //     });
  //     SharedPreferences pref = await SharedPreferences.getInstance();
  //     logindata = await LoginApi().loginApiList(emailController.text.toString(), passwordController.text.toString());
  //
  //     setState(() {
  //       isLoading = false;
  //     });
  //     if (logindata.code == 200) {
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => const BnbScreen()));
  //
  //       pref.setBool('isLogin', true);
  //
  //       bndScreenNevigator();
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("please enter valid data")));
  //
  //       // print("no user data");
  //     }
  //   }
  // }

  void bndScreenNevigator() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const BnbScreen()));
  }
}

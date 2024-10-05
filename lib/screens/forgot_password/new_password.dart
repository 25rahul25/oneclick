import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:one_click/screens/forgot_password/Successful_password.dart';
import 'package:one_click/screens/forgot_password/otp_forgot_pass.dart';
import 'package:one_click/widgets/custom_appbar.dart';

import '../../utils/ui/app_text_style.dart';
import '../../values/assets.dart';
import '../../values/radius_constant.dart';
import '../../widgets/custom_gradient_button.dart';
import '../../widgets/custom_svg.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_text_with_background.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const CustomSvg(
            svgPath: Assets.backArrow,
            padding: EdgeInsets.all(RadiusConstants.borderRadius12),
          ),
        ),
        title: const  Row(
          children: [
            CustomSvg(svgPath: Assets.logo),
            Spacer(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 100,),
              const Center(child: CustomTextWithBackground(text: 'Forgot Password')),
              const  SizedBox(height: 12,),
              Text("You are creating account on OneClick means you are agree with our Terms & conditions."
                ,style: AppTextStyles.hintText2,textAlign: TextAlign.center, ),

              const SizedBox(height: 60,),
              CustomTextField(
                validator: RequiredValidator(errorText: "Can't be empty"),
                controller: passwordController,
                hintText: "Password",
                minLenghth: 8,
                isPasswordField: true,
              ),
              const SizedBox(height: 20,),
              CustomTextField(
                validator: RequiredValidator(errorText: "Can't be empty"),
                controller: confirmPasswordController,
                hintText: "Enter confirm password",
                isPasswordField: true,
                minLenghth: 8,
              ),
              const  SizedBox(height: 60,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const SuccessfulPassword() ,));
                },
                child: CustomGradientButton(
                  inProgress: false,
                  height: 50,
                  isVertical: true,
                  borderRadius: RadiusConstants.borderRadius12,
                  width: 330,
                  onTap:null,
                  text: 'Continue',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

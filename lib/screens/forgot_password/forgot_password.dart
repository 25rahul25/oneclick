import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:one_click/screens/forgot_password/otp_forgot_pass.dart';
import 'package:one_click/widgets/custom_appbar.dart';

import '../../utils/ui/app_text_style.dart';
import '../../values/assets.dart';
import '../../values/radius_constant.dart';
import '../../widgets/custom_gradient_button.dart';
import '../../widgets/custom_svg.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_text_with_background.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
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
                hintText: 'Enter Email ID',
                controller: emailController,
                validator: MultiValidator([
                  RequiredValidator(errorText: "Can't be empty"),
                  EmailValidator(errorText: 'Enter Valid Email'),
                ]),
              ),
            const  SizedBox(height: 60,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpForgotPassword(),));
                },
                child: CustomGradientButton(
                  inProgress: false,
                  height: 50,
                  isVertical: true,
                  borderRadius: RadiusConstants.borderRadius12,
                  width: 330,
                  onTap: null,
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

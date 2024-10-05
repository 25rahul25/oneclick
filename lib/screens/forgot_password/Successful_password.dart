import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:one_click/screens/login_screen.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import '../../utils/ui/app_text_style.dart';
import '../../values/assets.dart';
import '../../values/radius_constant.dart';
import '../../widgets/custom_gradient_button.dart';
import '../../widgets/custom_svg.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_text_with_background.dart';

class SuccessfulPassword extends StatefulWidget {
  const SuccessfulPassword({super.key});

  @override
  State<SuccessfulPassword> createState() => _SuccessfulPasswordState();
}

class _SuccessfulPasswordState extends State<SuccessfulPassword> {
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
          padding:const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 100,),
              Image.asset("assets/temp/successful.png",height: 180,),
              const  SizedBox(height: 60,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const LoginScreen() ,));
                },
                child: Align(
                  alignment: Alignment.center,
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
              ),
             const SizedBox(
                height: 18,
              ),
              Text("Your Password has been change Successfully."
                ,style: AppTextStyles.hintText2,textAlign: TextAlign.center, ),
            ],
          ),
        ),
      ),
    );
  }
}

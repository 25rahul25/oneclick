import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:one_click/screens/forgot_password/new_password.dart';
import 'package:one_click/widgets/custom_appbar.dart';

import '../../utils/ui/app_text_style.dart';
import '../../values/assets.dart';
import '../../values/radius_constant.dart';
import '../../widgets/custom_gradient_button.dart';
import '../../widgets/custom_svg.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_text_with_background.dart';

class OtpForgotPassword extends StatefulWidget {
  const OtpForgotPassword({super.key});

  @override
  State<OtpForgotPassword> createState() => _OtpForgotPasswordState();
}

class _OtpForgotPasswordState extends State<OtpForgotPassword> {
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
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              const SizedBox(height: 90,),
              const Center(child: CustomTextWithBackground(text: 'Forgot Password')),
              const  SizedBox(height: 12,),
              Text("You are creating account on OneClick means you are agree with our Terms & conditions."
                ,style: AppTextStyles.hintText2,textAlign: TextAlign.center, ),

              const SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding:const EdgeInsets.only(bottom: 13),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: .8,color: Colors.grey,),
                          borderRadius: BorderRadius.circular(12)),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration:const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                        style:const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18,),
                        //Theme.of(context).textTheme.headlineMedium,

                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    const SizedBox(width: 6,),
                    Container(
                      padding:const EdgeInsets.only(bottom: 13),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: .8,color: Colors.grey,),
                          borderRadius: BorderRadius.circular(12)),
                      child:
                      TextField(
                        decoration:const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style:const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18,),
                        //Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    const SizedBox(width: 6,),
                    Container(
                      padding:const EdgeInsets.only(bottom: 13),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: .8,color: Colors.grey,),
                          borderRadius: BorderRadius.circular(12)),
                      child: TextField(
                        decoration:const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style:const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18,),
                        //Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    const SizedBox(width: 6,),
                    Container(
                      padding:const EdgeInsets.only(bottom: 13),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: .8,color: Colors.grey,),
                          borderRadius: BorderRadius.circular(12)),
                      child: TextField(
                        decoration:const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style:const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18,),
                        // Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    const SizedBox(width: 6,),
                    Container(
                      padding:const EdgeInsets.only(bottom: 13),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: .8,color: Colors.grey,),
                          borderRadius: BorderRadius.circular(12)),
                      child: TextField(
                        decoration:const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style:const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18,),
                        // Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    const SizedBox(width: 6,),
                    Container(
                      padding:const EdgeInsets.only(bottom: 13),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: .8,color: Colors.grey,),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration:const InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none
                              )
                          ),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style:const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18,),
                          // Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
              const  SizedBox(height: 60,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewPassword(),));
                },
                child: CustomGradientButton(
                  inProgress: false,
                  height: 50,
                  isVertical: true,
                  borderRadius: RadiusConstants.borderRadius12,
                  width: 330,
                  onTap:null,
                  text: 'Verify',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

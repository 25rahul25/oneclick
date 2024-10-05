import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_radio_list_tile.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';
import '../widgets/custom_text_field.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: CustomTextWithBackground(
            text: 'Feedback', textStyle: AppTextStyles.poppinsB1),
        leading:  InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child:const CustomSvg(
            svgPath: Assets.backArrow,
            padding: EdgeInsets.all(RadiusConstants.borderRadius12),
          ),
        ),
      ),
      body: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 3.w),child: const _BuildBody()),
    );
  }
}

class _BuildBody extends StatefulWidget {
  const _BuildBody({Key? key}) : super(key: key);

  @override
  State<_BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<_BuildBody> {
  String? _groupValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(),
        CustomTextWithBackground(
          text: "Hey,",
          textStyle:
              AppTextStyles.poppinsB1.copyWith(color: AppColors.secondaryColor),
        ),
        const Gap(),
        RichText(
            text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: 'Please describe your ', style: AppTextStyles.poppinsB1),
          TextSpan(
              text: 'precious ',
              style: AppTextStyles.poppinsB1
                  .copyWith(color: AppColors.secondaryColor)),
          TextSpan(text: 'feedback', style: AppTextStyles.poppinsB1)
        ])),
        const SizedBox(height: 20,),
        CustomTextField(
          prefixIcon: CustomSvg(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            svgPath: Assets.searchIcon,
          ),
          hintText: 'Type Your Question',
          suffix: Container(
            padding:const EdgeInsets.only(right: 10),
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){},
                  child: CustomSvg(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      svgPath: Assets.micIcon),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 25,),
        CustomRadioListTile(
          height: 28,
          value: 'Report an Issue',
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
        CustomRadioListTile(
          height: 28,
          value: 'Suggest a frame',
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
        CustomRadioListTile(
          height: 28,
          value: 'Issue with a vendor',
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
        CustomRadioListTile(
          height: 28,
          value: 'Don’t want calls from us?',
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
        CustomRadioListTile(
          height: 28,
          value: 'Grievance Redressal',
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
        CustomRadioListTile(
          height: 28,
          value: 'My Transaction',
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
        CustomRadioListTile(
          height: 28,
          value: 'Real Estate',
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
        const Gap(),
        Center(
          child: CustomGradientButton(
              isVertical: true, onTap: () {
          }, text: 'Submit', inProgress: false),
        )
      ],
    );
  }
}

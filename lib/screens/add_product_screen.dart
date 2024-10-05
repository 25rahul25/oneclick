import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/utils/ui/image_picker_helper.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_drop_down_button2.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_field2.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:one_click/widgets/unfocus_wrapper.dart';
import 'package:sizer/sizer.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnFocusWrapper(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: CustomAppBar(
          title: CustomTextWithBackground(
              text: 'Add Product', textStyle: AppTextStyles.poppinsB1),
          leading: const CustomSvg(
            svgPath: Assets.backArrow,
            padding: EdgeInsets.all(RadiusConstants.borderRadius12),
          ),
        ),
        body: const SingleChildScrollView(child: _BuildBody()),
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
  double start = 30.0;
  double end = 50.0;
  List<String> itemList = ['Ahmedabad', 'Surat', 'Rajkot'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 3.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Product details',
            style: AppTextStyles.poppinsB1,
          ),
          const Gap(),
          const CustomTextField2(
            labelText: 'Your store name',
          ),
          const Gap(),
          CustomDropDownButton2(
            hintText: 'City',
            itemList: const ['Ahmedabad', 'Surat'],
            onChangedValue: (String? value) {},
          ),
          const CustomTextField2(
            labelText: 'Product name',
          ),
          const Gap(),
          const CustomTextField2(
            labelText: 'Product Size',
          ),
          const Gap(),
          const CustomTextField2(
            labelText: 'Product description',
          ),
          const Gap(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Price Range : ", style: AppTextStyles.hintText2),
                Text(" ${start.toStringAsFixed(2)}/${end.toStringAsFixed(2)}")
              ],
            ),
          ),
          RangeSlider(
            activeColor: AppColors.secondaryColor,
            inactiveColor: AppColors.primaryColor,
            values: RangeValues(start, end),
            labels: RangeLabels(start.toString(), end.toString()),
            onChanged: (value) {
              setState(() {
                start = value.start;
                end = value.end;
              });
            },
            min: 1.0,
            max: 100.0,
          ),
          const Gap(),
          const CustomTextField2(
            labelText: 'Manufacture detail',
          ),
          const Gap(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upload \n Product Images",
                  style: AppTextStyles.poppinsB1,
                ),
                CustomGradientButton(
                    height: 6.h,
                    width: 40.w,
                    borderRadius: RadiusConstants.borderRadius20,
                    textStyle: AppTextStyles.poppinsB1
                        .copyWith(color: AppColors.whiteColor),
                    onTap: () {},
                    text: '+ Upload',
                    inProgress: false),
              ],
            ),
          ),
          Gap(
            height: 5.h,
          ),
          Center(
            child: CustomGradientButton(
                height: 6.h,
                width: 80.w,
                borderRadius: RadiusConstants.borderRadius20,
                textStyle: AppTextStyles.poppinsB1
                    .copyWith(color: AppColors.whiteColor),
                onTap: () {
                  ImagePickerHelper.pickImage(ImageSource.gallery)
                      .then((value) {
                    if (value != null) {
                      setState(() {});
                    }
                  });
                },
                text: 'Add Product',
                inProgress: false),
          ),
        ],
      ),
    );
  }
}

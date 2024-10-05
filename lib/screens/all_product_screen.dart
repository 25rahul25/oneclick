import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_drop_down_button.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class AllProductScreen extends StatelessWidget {
  const AllProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: CustomTextWithBackground(
            text: 'All Product', textStyle: AppTextStyles.poppinsB2),
        leading: const CustomSvg(
          svgPath: Assets.backArrow,
          padding: EdgeInsets.all(RadiusConstants.borderRadius12),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CustomGradientButton(
              onTap: () {},
              text: '+Add Product',
              inProgress: false,
              isVertical: true,
              height: 5.h,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: const _BuildBody(),
      ),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(),
        CustomDropDownButton(
          height: 52,
          hintText: 'Select Category ',
          itemList: List.empty(),
          onChangedValue: (selectedItem) {},
        ),
        CustomDropDownButton(
          height: 52,
          hintText: 'Select Sub Category ',
          itemList: List.empty(),
          onChangedValue: (selectedItem) {},
        ),
        const Gap(),
        SizedBox(
          height: 70.7.h,
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Stack(
                children:[
                  Container(
                    margin:const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow:const [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0.3,
                              blurRadius: 4
                          )
                        ]
                    ),
                    child: ListTile(
                    leading: Stack(
                      children:[ Image.asset("assets/temp/product_item.png",
                          fit: BoxFit.cover),
                        const Positioned(
                            child: Text("RFQ",style: TextStyle(fontSize: 14),))
                    ]
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Round toe leather loafer shoe(Black)',
                          style: AppTextStyles.poppinsB3,
                        ),
                        Text(
                          'Rainbow shoes & enterprise',
                          style: AppTextStyles.poppinsB4,
                        ),
                        Row(
                          children: [
                            const CustomSvg(
                              svgPath: Assets.locationIcon,height: 15,
                            ),
                            Text(
                              'Ahmedabad',
                              style: AppTextStyles.poppinsB4,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const CustomSvg(
                              svgPath: Assets.rupeesIcon,height: 15,
                            ),
                            Text(
                              '1800',
                              style: AppTextStyles.poppinsB3,
                            ),
                          ],
                        ),
                      ],
                    ),
                                    ),
                  ),
                  Positioned(
                    right:12,
                    top:17,
                    child:CustomSvg(
                    color: AppColors.blackColor,
                    svgPath: Assets.editIconOption,
                  ), )
              ]
              );
            },
          ),
        )
      ],
    );
  }
}

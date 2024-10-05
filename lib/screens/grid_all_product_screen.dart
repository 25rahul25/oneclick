import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/screens/product_description/product_discription_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_icon_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_field.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class GridAllProductScreen extends StatelessWidget {
  const GridAllProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: Text(
            'Men’s shoes',
            style: AppTextStyles.poppinsB1
                .copyWith(color: AppColors.secondaryColor),
          ),
          leading:  InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const CustomSvg(
              svgPath: Assets.backArrow,
              padding: EdgeInsets.all(RadiusConstants.borderRadius12),
            ),
          ),
        ),
        body: const _BuildBody());
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 3.w),
      child: Column(
        children: [
          const Gap(),
          CustomTextField(
            prefixIcon: CustomSvg(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              svgPath: Assets.searchIcon,
            ),
            hintText: 'Shoes manufactures in ahmedabad',
            suffix: CustomSvg(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                svgPath: Assets.micIcon),
          ),
          const Gap(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Gap(width: 5.w,),
                  CustomGradientButton(

                      height: 5.h,
                      onTap: () {},
                      isVertical: true,
                      text: "All Product",
                      inProgress: false),
                ],
              ),
              Row(
                children: [
                  CustomIconButton(
                    onTap: () {},
                    svgPath: Assets.filterIcon,
                    padding: EdgeInsets.all(3.sp),
                  ),
                  Gap(width: 2.w,),
                ],
              )
            ],
          ),
          const Gap(),
          Expanded(
            child: GridView.builder(
              itemCount: 3,
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: ((MediaQuery.of(context).size.width / 2.5) /
                    (MediaQuery.of(context).size.height / 3)),
                mainAxisSpacing: 3.h,
                crossAxisSpacing: 3.w,
              ),
              itemBuilder: (context, index) {
                return const CustomContainerAllProduct(
                    productName: "Round toe leather loafer shoe(Black)",
                    companyName: 'Rainbow shoes & enterprise',
                    locationName: 'Ahmedabad',
                    price: '1800');
              },
            ),
          )
        ],
      ),
    );
  }
}

class CustomContainerAllProduct extends StatelessWidget {
  const CustomContainerAllProduct(
      {Key? key,
      required this.productName,
      required this.companyName,
      required this.locationName,
      required this.price})
      : super(key: key);
  final String productName;
  final String companyName;
  final String locationName;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const  ProductDescriptionScreen(),));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3,
              spreadRadius: 0.1
            )
          ]
        ),
        padding: EdgeInsets.all(6.sp),
        height: 12.h,
        width: 40.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  " RFQ",
                  style: AppTextStyles.poppinsB2,
                ),
                const CustomSvg(svgPath: Assets.heartIcon)
              ],
            ),
            Image.asset(
              "assets/temp/product_item.png",
              height: 9.h,
              width: 38.w,
            ),
           const SizedBox(height: 9,),
            Text(productName, style:AppTextStyles.poppinsB2),
            Text(
              companyName,
              style: AppTextStyles.poppinsB4.copyWith(color: AppColors.secondaryColor),
            ),
             Gap( height: 1.h,),
            Row(
              children: [
                 CustomSvg(svgPath: Assets.locationIcon,height: 2.h,width: 4.w,color: AppColors.primaryColor,),
                Text(
                  locationName,
                  style: AppTextStyles.poppinsB4,
                ),
              ],
            ),
            Row(
              children: [
                const CustomSvg(svgPath: Assets.rupeesIcon),
                Text(
                  price,
                  style: AppTextStyles.poppinsB2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

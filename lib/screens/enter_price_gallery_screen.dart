

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/utils/ui/image_picker_helper.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:sizer/sizer.dart';

class EnterPriceGalleryScreen extends StatelessWidget {
  const EnterPriceGalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _BuildBody(),
    );
  }
}

class _BuildBody extends StatefulWidget {
 const  _BuildBody({Key? key}) : super(key: key);

  @override
  State<_BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<_BuildBody> {
  // List<File> imagesList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: SizedBox(
              width: 60.w,
              child: Text('Rainbow Shoes and EnterPrice',
                  style: AppTextStyles.poppinsB2
                      .copyWith(color: AppColors.secondaryColor))),
          leading: const CustomSvg(
            svgPath: Assets.backArrow,
            padding: EdgeInsets.all(RadiusConstants.borderRadius12),
          ),
          actions: [
            CustomSvg(
              svgPath: Assets.rightBackArrow,
              height: 4.h,
              padding: const EdgeInsets.all(RadiusConstants.borderRadius12),
            )
          ],
        ),

        SizedBox(
          height: 80.h,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 3,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0

               ),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {

                },
                child: Stack(children: [

                  Center(child: Image.asset("assets/temp/repair_demo.png",fit: BoxFit.cover,height: 15.h,width: 30.w,)),
                  const Align(
                      alignment: Alignment.topRight,
                      child: CustomSvg(
                          svgPath: Assets.cancelIconWithBackground)),
                ]),
              );
            },
          ),
        ),
        Center(
          child: CustomGradientButton(
            isVertical: true,
            text:
             "Add Photo",
            onTap: () {
              ImagePickerHelper.pickMultiImage(ImageSource.gallery)
                  .then((value) {
                if (value != null) {
                  setState(() {
                    // imagesList.addAll(value)
                  });
                }
              });
            },
           inProgress: false,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:one_click/api.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/models/models/startup_inset_model.dart';
import 'package:one_click/screens/list_business_screen/third_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_field2.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class ListBusinessScreen2 extends StatefulWidget {
  const ListBusinessScreen2(
      {Key? key,
      this.name,
      this.bperson,
      this.bmobile,
      this.bpincode,
      this.bcity})
      : super(key: key);
   final  name;
  final bperson;
  final bmobile;
  final bpincode;
  final bcity;

  @override
  State<ListBusinessScreen2> createState() => _ListBusinessScreen2State();
}

class _ListBusinessScreen2State extends State<ListBusinessScreen2> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        title: CustomTextWithBackground(
          text: 'Free Listing',
          textStyle: AppTextStyles.poppinsB1,
        ),
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
      body:
          _BuildBody(
            name: widget.name,
            bperson: widget.bperson ,
            bmobile: widget.bmobile,
            bpincode: widget.bpincode,
            bcity: widget.bcity,
          ),
    );
  }
}

class _BuildBody extends StatefulWidget {
  const _BuildBody({
    Key? key,
    this.name,
    this.bperson,
    this.bmobile,
    this.bpincode,
    this.bcity,
  }) : super(key: key);

  // final PageController pageController;
  final name;
  final bperson;
  final bmobile;
  final bpincode;
  final bcity;

  @override
  State<_BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<_BuildBody> {
  // var? number= int.parse(bmobile.toString());
  StartUpInsertModel startUpData = StartUpInsertModel();

  TextEditingController businessCategory = TextEditingController();

  TextEditingController landmark = TextEditingController();

  TextEditingController streetName = TextEditingController();

  TextEditingController buildingName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(
              height: 5.h,
            ),
            CustomTextWithBackground(
              text: 'Here',
              textStyle: AppTextStyles.poppinsB1,
            ),
            const Gap(),
            Text(
              'Additional Information',
              style: AppTextStyles.poppinsB1,
            ),
            const SizedBox(height: 20,),
            CustomTextField2(
              controller: businessCategory,
              labelText: 'Business Category',
              prefixIcon: const CustomSvg(
                svgPath: Assets.businessName,
              ),
            ),
            const Gap(),
            CustomTextField2(
              controller: buildingName,
              labelText: 'Building name',
              prefixIcon: const CustomSvg(
                svgPath: Assets.businessName,
              ),
            ),
            const Gap(),
            CustomTextField2(
              controller: streetName,
              labelText: 'Street name',
              prefixIcon: const CustomSvg(
                svgPath: Assets.streetName,
              ),
            ),
            const Gap(),
            CustomTextField2(
              controller: landmark,
              labelText: 'Landmark',
              prefixIcon: const CustomSvg(
                svgPath: Assets.businessName,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/list_business_screen/add_photo.png',)),
                // TODO : SVG , IMAGE_PICKER
                // CustomIconButton(onTap: () {},
                //     svgPath: Assets.addPhoto),
                Text(
                  "  Add photo",
                  style: AppTextStyles.poppinsB1,
                ),
              ],
            ),
            Gap(
              height: 3.h,
            ),
            Align(
              alignment: Alignment.center,
              child: CustomGradientButton(
                onTap: () {
                  StartUpInsertApi().startUpInsertList(
                      widget.name.toString(),
                      int.parse(widget.bmobile.toString()),
                      widget.bperson.toString(),
                      widget.bcity.toString(),
                      int.parse(widget.bpincode.toString()));
                  if (startUpData.message == "data saved") {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Successfully Add StartUp")));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListBusinessScreen3()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Something is wrong")));
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> _BuildBody()));
                  }

                  // pageController.nextPage(
                  //     duration: Duration(seconds: 1), curve: Curves.easeIn);
                },
                text: 'Next',
                inProgress: false,
                isVertical: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

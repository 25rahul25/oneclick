import 'package:flutter/material.dart';
import 'package:one_click/screens/login_screen.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/screens/feedback_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_icon_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import 'contact_us_screen.dart';


class OtherScreen extends StatelessWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: const Align(
              alignment: Alignment.center,
              child: CustomSvg(svgPath: Assets.logo)),
          leading: Padding(
            padding: EdgeInsets.all(3.sp),
            child: CircleAvatar(
              radius: 18.sp,
              backgroundImage:
                  const AssetImage("assets/temp/dummy_profile_image.png"),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 3.w),
              child: CustomIconButton(
                onTap: () {},
                svgPath: Assets.notificationIcon,
              ),
            ),
          ],
        ),
        body: const _BuildBody());
  }
}

class _BuildBody extends StatefulWidget {
  const _BuildBody({Key? key}) : super(key: key);

  @override
  State<_BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<_BuildBody> {
  late bool? Logout;
  void loadData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
    pref.remove("isLogin");
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: CustomTextWithBackground(
              text: 'Other', textStyle: AppTextStyles.poppinsB2),
          leading:  InkWell(
            onTap: (){
            },
            child:const CustomSvg(
              svgPath: Assets.backArrow,
              padding: EdgeInsets.all(RadiusConstants.borderRadius12),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: List.generate(
              itemList.length,
              (index) => InkWell(
                onTap: (){
                  if(index==3){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const FeedbackScreen(),));

                  }else if(index==11){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const ContactUsScreen() ,));
                  }else if(index==12){
                   setState(() {
                     loadData();
                   });
                  }
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 2.h),
                  child: Row(
                    children: [
                      const Gap(),
                      CustomSvg(svgPath: itemList[index].svgPath),
                      const Gap(),
                      Text(
                        itemList[index].text,
                        style: AppTextStyles.poppinsB2
                            .copyWith(fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<OtherListModel> itemList = [
    OtherListModel(
      svgPath: Assets.openBook,
      onTap: () {},
      text: "List a Business",
    ),
    OtherListModel(
      svgPath: Assets.book,
      onTap: () {},
      text: "Free listing",
    ),
    OtherListModel(
      svgPath: Assets.clipBoard,
      onTap: () {},
      text: "Talk about us",
    ),
    OtherListModel(
      svgPath: Assets.phoneCall,
      onTap: () {},
      text: "Feedback",
    ),
    OtherListModel(
      svgPath: Assets.thumbUp,
      onTap: () {},
      text: "Testimonial",
    ),
    OtherListModel(
      svgPath: Assets.trendingUp,
      onTap: () {},
      text: "Rate OC App",
    ),
    OtherListModel(
      svgPath: Assets.messageSquare,
      onTap: () {},
      text: "About OneClick",
    ),
    OtherListModel(
      svgPath: Assets.userIcon,
      onTap: () {},
      text: "Who are we?",
    ),
    OtherListModel(
      svgPath: Assets.alertCircle,
      onTap: () {},
      text: "Policies",
    ),
    OtherListModel(
      svgPath: Assets.alertCircle,
      onTap: () {},
      text: "Terms of services",
    ),
    OtherListModel(
      svgPath: Assets.anchor,
      onTap: () {},
      text: "Infringement Policy",
    ),
    OtherListModel(
      svgPath: Assets.phoneCall,
      onTap: () {},
      text: "Contact Us",
    ),
    OtherListModel(
      svgPath:Assets.alertCircle,
      onTap: () {

      },
      text: "Log out",
    ),
  ];
}

class OtherListModel {
  final String svgPath;
  final String text;
  final VoidCallback onTap;

  OtherListModel({
    required this.svgPath,
    required this.onTap,
    required this.text,
  });
}
